-- ============================================================
-- VORTEX — Fix: políticas RLS da tabela profiles
-- Execute no Supabase SQL Editor (como superuser / service role)
-- ============================================================
-- Problema: a policy "admin_profiles" faz SELECT na própria
-- tabela profiles enquanto o RLS está ativo, causando recursão
-- infinita no Postgres. Isso retorna um erro genérico que não é
-- PGRST116, cai no else de doLogin/initAuth e exibe
-- "Erro ao carregar perfil. Tente novamente."
-- ============================================================

-- Passo 1: remover TODAS as policies existentes na tabela profiles
DROP POLICY IF EXISTS "own_profile"     ON profiles;
DROP POLICY IF EXISTS "admin_profiles"  ON profiles;
DROP POLICY IF EXISTS "profiles_read_own"   ON profiles;
DROP POLICY IF EXISTS "profiles_insert_own" ON profiles;
DROP POLICY IF EXISTS "profiles_update_own" ON profiles;

-- Passo 2: recriar sem recursão
-- Qualquer usuário autenticado pode SELECT/INSERT/UPDATE/DELETE
-- apenas no seu próprio registro (id = auth.uid()).
-- Isso cobre tanto o aluno quanto o admin para a própria linha.
CREATE POLICY "own_profile" ON profiles
  FOR ALL
  TO authenticated
  USING (id = auth.uid())
  WITH CHECK (id = auth.uid());

-- Passo 3: admin pode ler TODOS os perfis — mas sem recursão.
-- Em vez de consultar profiles para saber se é admin, usamos
-- uma função SECURITY DEFINER que bypassa o RLS internamente.
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION is_admin()
RETURNS BOOLEAN
LANGUAGE sql
SECURITY DEFINER
STABLE
AS $$
  SELECT EXISTS (
    SELECT 1 FROM profiles WHERE id = auth.uid() AND role = 'admin'
  );
$$;

-- Policy de admin que usa a função SECURITY DEFINER (sem recursão)
CREATE POLICY "admin_read_all_profiles" ON profiles
  FOR SELECT
  TO authenticated
  USING (is_admin());

-- ============================================================
-- Verificação: deve retornar os dois usuários com roles corretos
-- ============================================================
SELECT u.email, p.role, p.display_name
FROM profiles p
JOIN auth.users u ON u.id = p.id
WHERE u.email IN ('san.27ramos@gmail.com', 'pricillarms@hotmail.com');
