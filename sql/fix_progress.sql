-- ============================================================
-- fix_progress.sql
-- Diagnóstico e limpeza da tabela progress do VORTEX
-- ============================================================
-- PROBLEMA: Módulos bloqueados mostrando aulas concluídas que o
-- usuário nunca fez.
--
-- CAUSA RAIZ IDENTIFICADA:
--   O vortex_setup.sql original criou a tabela progress SEM user_id:
--     CREATE TABLE progress (
--         lesson_id INT PRIMARY KEY,
--         completed BOOL,
--         completed_at TIMESTAMPTZ
--     );
--   O vortex_update.sql depois adicionou user_id via ALTER TABLE,
--   deixando todas as linhas existentes com user_id = NULL.
--   A query no JS usa .eq('user_id', uid), mas se uid for null
--   (ou se o Supabase JS v1 tratar null diferente), pode buscar
--   linhas com user_id IS NULL — que pertencem a "ninguém" mas
--   aparecem para o usuário logado.
--
--   Além disso: dados de teste inseridos sem user_id correto
--   ou com user_id de outro usuário (ex: admin) podem ter
--   "vazado" para a view do aluno antes do RLS estar ativo.
-- ============================================================

-- ============================================================
-- STEP 1: DIAGNÓSTICO — ver estado atual da tabela progress
-- ============================================================

-- Quantas linhas existem no total
SELECT COUNT(*) AS total_rows FROM progress;

-- Distribuição por user_id (mostra quantas aulas cada usuário tem)
SELECT
  user_id,
  COUNT(*) AS total_linhas,
  COUNT(*) FILTER (WHERE completed = true) AS concluidas,
  COUNT(*) FILTER (WHERE completed = false) AS nao_concluidas,
  MIN(completed_at) AS primeira_conclusao,
  MAX(completed_at) AS ultima_conclusao
FROM progress
GROUP BY user_id
ORDER BY total_linhas DESC;

-- Linhas com user_id NULL (vestígios da migração antiga)
SELECT
  lesson_id,
  completed,
  completed_at,
  'user_id IS NULL' AS problema
FROM progress
WHERE user_id IS NULL;

-- Linhas com user_id que NÃO existe em auth.users (orphans)
SELECT p.*
FROM progress p
LEFT JOIN auth.users u ON u.id = p.user_id
WHERE p.user_id IS NOT NULL AND u.id IS NULL;

-- Ver todos os user_ids distintos que têm progresso
SELECT DISTINCT
  p.user_id,
  u.email,
  prof.role,
  prof.display_name
FROM progress p
LEFT JOIN auth.users u ON u.id = p.user_id
LEFT JOIN profiles prof ON prof.id = p.user_id
ORDER BY prof.role, u.email;

-- ============================================================
-- STEP 2: LIMPEZA — remover linhas inválidas
-- ============================================================

-- 2a. Deletar linhas onde user_id é NULL (resquícios da migração)
DELETE FROM progress
WHERE user_id IS NULL;

-- 2b. Deletar linhas onde user_id não existe em auth.users (orphans)
DELETE FROM progress
WHERE user_id NOT IN (SELECT id FROM auth.users);

-- ============================================================
-- STEP 3: GARANTIR que a constraint PK composta existe
-- ============================================================
-- Se o DO $$ do vortex_update.sql falhou silenciosamente,
-- a PK ainda pode ser só lesson_id. Vamos garantir a PK composta.

-- Verificar PK atual:
SELECT
  tc.constraint_name,
  kcu.column_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
  ON tc.constraint_name = kcu.constraint_name
WHERE tc.table_name = 'progress'
  AND tc.constraint_type = 'PRIMARY KEY'
ORDER BY kcu.ordinal_position;

-- Se a PK não incluir user_id, rodar os comandos abaixo:
-- (descomente se necessário)
-- ALTER TABLE progress DROP CONSTRAINT IF EXISTS progress_pkey;
-- ALTER TABLE progress ADD PRIMARY KEY (user_id, lesson_id);

-- ============================================================
-- STEP 4: CONFIRMAR que RLS está ativo e a policy correta existe
-- ============================================================

-- Ver se RLS está habilitado
SELECT
  tablename,
  rowsecurity
FROM pg_tables
WHERE schemaname = 'public' AND tablename = 'progress';

-- Ver as policies existentes na tabela progress
SELECT
  policyname,
  cmd,
  qual,
  with_check
FROM pg_policies
WHERE tablename = 'progress';

-- ============================================================
-- STEP 5: VERIFICAÇÃO FINAL após limpeza
-- ============================================================

-- Quantas linhas sobraram (devem ser só do usuário real)
SELECT
  p.user_id,
  u.email,
  COUNT(*) AS aulas_com_progresso,
  COUNT(*) FILTER (WHERE p.completed = true) AS concluidas
FROM progress p
LEFT JOIN auth.users u ON u.id = p.user_id
GROUP BY p.user_id, u.email;
