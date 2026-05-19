-- ============================================================
-- VORTEX — Correção: inserir registros na tabela profiles
-- Execute no Supabase SQL Editor
-- ============================================================
-- Problema: os dois usuários existiam no Supabase Auth mas não
-- tinham linha correspondente na tabela profiles, causando
-- "Erro ao carregar perfil" no login.
-- ============================================================

-- Santiago (aluno) — san.27ramos@gmail.com → role: student
INSERT INTO profiles (id, role, display_name)
SELECT id, 'student', 'Santiago'
FROM auth.users
WHERE email = 'san.27ramos@gmail.com'
ON CONFLICT (id) DO UPDATE
  SET role = 'student',
      display_name = COALESCE(profiles.display_name, 'Santiago');

-- Pricilla (admin) — pricillarms@hotmail.com → role: admin
INSERT INTO profiles (id, role, display_name)
SELECT id, 'admin', 'Pricilla'
FROM auth.users
WHERE email = 'pricillarms@hotmail.com'
ON CONFLICT (id) DO UPDATE
  SET role = 'admin',
      display_name = COALESCE(profiles.display_name, 'Pricilla');

-- Verificação: deve retornar 2 linhas com os roles corretos
SELECT u.email, p.role, p.display_name
FROM profiles p
JOIN auth.users u ON u.id = p.id
WHERE u.email IN ('san.27ramos@gmail.com', 'pricillarms@hotmail.com');
