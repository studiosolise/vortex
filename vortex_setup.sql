-- ============================================================
-- VORTEX SETUP SQL
-- Plataforma de estudos gamificada para Santiago
-- Limpa tudo e cria do zero
-- ============================================================

-- ============================================================
-- STEP 1: DROP ALL EXISTING TABLES (clean slate)
-- ============================================================

DROP TABLE IF EXISTS unlocked_achievements CASCADE;
DROP TABLE IF EXISTS achievements CASCADE;
DROP TABLE IF EXISTS project_completions CASCADE;
DROP TABLE IF EXISTS projects CASCADE;
DROP TABLE IF EXISTS videos CASCADE;
DROP TABLE IF EXISTS notes CASCADE;
DROP TABLE IF EXISTS progress CASCADE;
DROP TABLE IF EXISTS lessons CASCADE;
DROP TABLE IF EXISTS modules CASCADE;

-- Drop any other tables that might exist from previous projects
DO $$
DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = 'public') LOOP
        EXECUTE 'DROP TABLE IF EXISTS public.' || quote_ident(r.tablename) || ' CASCADE';
    END LOOP;
END $$;

-- ============================================================
-- STEP 2: CREATE TABLES
-- ============================================================

CREATE TABLE modules (
    id          SERIAL PRIMARY KEY,
    title       TEXT NOT NULL,
    description TEXT,
    icon        TEXT,
    level_name  TEXT,
    order_index INT,
    color       TEXT
);

CREATE TABLE lessons (
    id          SERIAL PRIMARY KEY,
    module_id   INT REFERENCES modules(id) ON DELETE CASCADE,
    title       TEXT NOT NULL,
    description TEXT,
    search_tip  TEXT,
    order_index INT,
    xp_reward   INT DEFAULT 15
);

CREATE TABLE progress (
    lesson_id    INT PRIMARY KEY REFERENCES lessons(id) ON DELETE CASCADE,
    completed    BOOL DEFAULT FALSE,
    completed_at TIMESTAMPTZ
);

CREATE TABLE notes (
    id         SERIAL PRIMARY KEY,
    lesson_id  INT REFERENCES lessons(id) ON DELETE CASCADE,
    content    TEXT,
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE videos (
    id         SERIAL PRIMARY KEY,
    lesson_id  INT REFERENCES lessons(id) ON DELETE CASCADE,
    url        TEXT,
    title      TEXT,
    saved_at   TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE projects (
    id             SERIAL PRIMARY KEY,
    title          TEXT NOT NULL,
    description    TEXT,
    level_name     TEXT,
    sparks_reward  INT,
    brl_reward     INT,
    requirements   JSONB,
    order_index    INT
);

CREATE TABLE project_completions (
    id           SERIAL PRIMARY KEY,
    project_id   INT REFERENCES projects(id) ON DELETE CASCADE,
    notes        TEXT,
    completed_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE achievements (
    id               SERIAL PRIMARY KEY,
    name             TEXT NOT NULL,
    description      TEXT,
    icon             TEXT,
    condition_type   TEXT,
    condition_value  INT,
    sparks_bonus     INT DEFAULT 0
);

CREATE TABLE unlocked_achievements (
    achievement_id INT PRIMARY KEY REFERENCES achievements(id) ON DELETE CASCADE,
    unlocked_at    TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- STEP 3: DISABLE RLS ON ALL TABLES
-- ============================================================

ALTER TABLE modules               DISABLE ROW LEVEL SECURITY;
ALTER TABLE lessons               DISABLE ROW LEVEL SECURITY;
ALTER TABLE progress              DISABLE ROW LEVEL SECURITY;
ALTER TABLE notes                 DISABLE ROW LEVEL SECURITY;
ALTER TABLE videos                DISABLE ROW LEVEL SECURITY;
ALTER TABLE projects              DISABLE ROW LEVEL SECURITY;
ALTER TABLE project_completions   DISABLE ROW LEVEL SECURITY;
ALTER TABLE achievements          DISABLE ROW LEVEL SECURITY;
ALTER TABLE unlocked_achievements DISABLE ROW LEVEL SECURITY;

-- ============================================================
-- STEP 4: SEED DATA — MODULES
-- ============================================================

INSERT INTO modules (title, description, icon, level_name, order_index, color) VALUES
(
    'O Despertar',
    'Descubra o poder da IA: como as frutas do diabo, cada ferramenta tem um poder único esperando para ser dominado.',
    '🌀',
    'Iniciante',
    1,
    '#7c3aed'
),
(
    'A Arte do Comando',
    'Aprenda a falar a língua da IA. Um bom prompt é como uma Haki bem treinada. Muda tudo.',
    '⚡',
    'Aprendiz',
    2,
    '#0891b2'
),
(
    'Mundos Visuais: Sites',
    'Construa portais digitais. Da landing page ao site completo, você vai publicar no ar como um verdadeiro construtor.',
    '🌐',
    'Construtor',
    3,
    '#059669'
),
(
    'Arenas de Dados: Dashboards',
    'Transforme números em poder visual. Painéis que mostram tudo que importa, em tempo real.',
    '📊',
    'Analista',
    4,
    '#d97706'
),
(
    'Reinos de Jogo: Games',
    'Crie jogos jogáveis no browser. Mecânicas, sprites, pontuação: tudo com IA.',
    '🎮',
    'Game Dev',
    5,
    '#dc2626'
),
(
    'Sistemas e Apps',
    'Construa o cérebro por trás dos projetos. Formulários, bancos de dados, lógica real.',
    '⚙️',
    'Arquiteto',
    6,
    '#7c3aed'
),
(
    'O Profissional',
    'Hora de cobrar. Planeje, apresente, entregue e receba. Você já é um criador com IA.',
    '💼',
    'Mestre',
    7,
    '#f59e0b'
);

-- ============================================================
-- STEP 5: SEED DATA — LESSONS
-- ============================================================

-- Módulo 1: O Despertar
INSERT INTO lessons (module_id, title, description, search_tip, order_index, xp_reward) VALUES
(1, 'O que é IA?', 'Entenda o que é Inteligência Artificial usando a metáfora das frutas do diabo: cada IA tem um poder único esperando para ser desbloqueado. Assim como no Blox Fruits, você precisa saber qual poder usar em cada situação.', 'o que é inteligência artificial explicado simples', 1, 15),
(1, 'Suas ferramentas de batalha', 'Google Antigravity (para codar), Claude (para programar com IA) e GPT (para ideias e imagens): sua coleção de poderes. Cada ferramenta tem um uso ideal, como escolher o Vingador certo para cada missão. Aprenda quando usar cada uma.', 'melhores ferramentas de IA para criar sites e projetos', 2, 15),
(1, 'Como a IA "pensa"', 'Ela não pensa, prevê. É como o GPS que calcula o melhor caminho com base nos dados que tem. Entender isso muda como você faz seus pedidos e por que o contexto é tão importante.', 'como funciona a inteligência artificial de forma simples', 3, 15),
(1, 'Seu primeiro prompt', 'Chegou a hora de usar seu poder pela primeira vez. Peça à IA para gerar uma ideia de negócio para você. Veja o resultado e entenda o que aconteceu.', 'como escrever prompts para chatgpt iniciantes', 4, 15),
(1, 'O que a IA não consegue fazer', 'Todo herói tem fraqueza. O Homem de Ferro sem a armadura, o Luffy sem seu Haki. Conhecer os limites da IA faz você usá-la melhor e não desperdiçar tempo com o que ela não entrega.', 'limitações da inteligência artificial', 5, 15);

-- Módulo 2: A Arte do Comando
INSERT INTO lessons (module_id, title, description, search_tip, order_index, xp_reward) VALUES
(2, 'Prompt ruim vs Prompt bom', 'A diferença entre "faz um site" e um pedido profissional é enorme. Veja exemplos reais e entenda como reescrever seus prompts para obter resultados profissionais.', 'como escrever bons prompts chatgpt exemplos', 1, 15),
(2, 'Dar contexto é tudo', 'Quanto mais você explica quem você é, o que quer e para que serve, melhor a IA entrega. É como dar o mapa completo ao invés de só o destino.', 'como dar contexto para a IA prompt engineering', 2, 15),
(2, 'A técnica do Role', 'Diga à IA quem ela é: "você é um desenvolvedor sênior com 10 anos de experiência...". Isso ativa um nível diferente de resposta. Aprenda a técnica de Role Prompting.', 'role prompting chatgpt tutorial', 3, 15),
(2, 'Pedindo revisões e melhorias', 'A IA raramente acerta de primeira, e não precisa. Aprenda a iterar: peça melhorias, mudanças específicas, variações. É como treinar combos no Blox Fruits até dominar.', 'como pedir melhorias à IA no prompt', 4, 15),
(2, 'Dividindo problemas grandes', 'Faça X, depois Y. Como missões em cadeia no Blox Fruits, aprenda a quebrar um projeto grande em partes pequenas que a IA consegue entregar perfeitamente.', 'chain of thought prompting tutorial', 5, 15),
(2, 'Seu grimório de prompts', 'Os melhores criadores com IA têm uma biblioteca de prompts que funcionam. Aprenda a salvar, organizar e reutilizar seus melhores pedidos para criar mais rápido.', 'como organizar prompts repositório', 6, 15);

-- Módulo 3: Mundos Visuais — Sites
INSERT INTO lessons (module_id, title, description, search_tip, order_index, xp_reward) VALUES
(3, 'Como um site funciona por dentro', 'HTML é a estrutura (os ossos), CSS é a roupa (o visual) e JS é o movimento (a ação). Você não precisa escrever isso, mas precisa entender para saber o que pedir.', 'como funciona um site explicado simples', 1, 15),
(3, 'O que é uma landing page e quando usar', 'Uma landing page é a página de impacto: onde alguém chega e decide ficar ou ir embora. Aprenda quando usar, por que funciona e como pedir uma para a IA.', 'o que é landing page e para que serve', 2, 15),
(3, 'Como pedir um site completo à IA', 'O prompt completo para um site profissional. Aprenda a estrutura certa: identidade, seções, cores, funcionalidades. O pedido certo gera o site certo.', 'prompt para criar site completo com IA', 3, 15),
(3, 'O que é hospedagem?', 'Onde o site mora quando está no ar. Vercel e Netlify são como plataformas de lançamento: gratuitas e poderosas. Entenda o conceito antes de subir seu primeiro projeto.', 'o que é hospedagem de site explicado simples', 4, 15),
(3, 'O que é um domínio?', 'O endereço do site: o que as pessoas digitam para chegar até você. Como comprar, onde registrar e quanto custa. Seu nome na internet.', 'o que é domínio de site como comprar', 5, 15),
(3, 'Como publicar no ar com Vercel', 'Do código ao site online em minutos. Passo a passo de como fazer deploy no Vercel, a plataforma favorita dos builders modernos.', 'como fazer deploy no vercel tutorial iniciante', 6, 15),
(3, 'Como conectar um domínio ao site', 'Você tem o site no ar e o domínio registrado. Agora precisa conectar os dois. Tutorial passo a passo de como apontar seu domínio para o Vercel.', 'como conectar domínio ao vercel passo a passo', 7, 15);

-- Módulo 4: Arenas de Dados — Dashboards
INSERT INTO lessons (module_id, title, description, search_tip, order_index, xp_reward) VALUES
(4, 'O que é um dashboard e para que serve', 'Um dashboard é uma central de comando: como a interface do Jarvis do Homem de Ferro. Mostra os números que importam em tempo real para tomar decisões rápidas.', 'o que é dashboard exemplos práticos', 1, 15),
(4, 'Tipos de dados que um painel pode mostrar', 'Gráficos de linha, barras, pizza, cards com números, tabelas, mapas. Cada tipo de dado pede um tipo de visualização. Aprenda a escolher o certo.', 'tipos de gráficos para dashboard', 2, 15),
(4, 'Como pedir um painel à IA', 'O prompt completo para criar um dashboard profissional. Estrutura, dados, visual, responsividade: tudo no pedido certo para a IA entregar.', 'como criar dashboard com IA prompt', 3, 15),
(4, 'O que é uma API?', 'A torneira que joga dados para o seu painel. Uma API é como um serviço de entrega: você pede os dados, ela entrega no formato que você precisa. Conceito fundamental.', 'o que é API explicado de forma simples', 4, 15),
(4, 'Como usar dados reais no seu dashboard', 'Conectar uma API real ao seu dashboard e ver dados ao vivo. Clima, preços, redes sociais: o mundo todo vira seu banco de dados.', 'como conectar API ao dashboard tutorial', 5, 15);

-- Módulo 5: Reinos de Jogo — Games
INSERT INTO lessons (module_id, title, description, search_tip, order_index, xp_reward) VALUES
(5, 'Tipos de jogos que a IA cria bem', 'Plataforma, puzzle, clicker, quiz, torre de defesa. Cada tipo tem características específicas. Aprenda quais a IA domina e qual é ideal para começar.', 'criar jogo com inteligência artificial tutorial', 1, 15),
(5, 'Como descrever mecânicas', 'O que acontece quando o jogador pula, clica, colide, ganha pontos. Descrever mecânicas é a habilidade mais importante para criar jogos com IA. Aprenda a linguagem certa.', 'como descrever mecânicas de jogo para IA', 2, 15),
(5, 'Como pedir sprites, sons e assets', 'Imagens dos personagens, efeitos sonoros, músicas de fundo. A IA gera tudo isso. Aprenda quais ferramentas usar e como pedir cada tipo de asset.', 'como gerar imagens e sons para jogos com IA', 3, 15),
(5, 'Como hospedar um jogo simples no ar', 'Um jogo em HTML fica online em minutos. Aprenda a subir seu jogo no GitHub Pages ou Itch.io e compartilhar com amigos para jogar.', 'como publicar jogo html online grátis', 4, 15),
(5, 'Como fazer updates e melhorias no jogo', 'Adicionar fases, novos inimigos, power-ups, placar online. Aprenda a evolução constante, como as atualizações do Blox Fruits que todo mundo espera.', 'como atualizar e melhorar jogo com IA', 5, 15);

-- Módulo 6: Sistemas e Apps
INSERT INTO lessons (module_id, title, description, search_tip, order_index, xp_reward) VALUES
(6, 'O que é um sistema', 'Um sistema é a combinação de formulário + banco de dados + lógica. É o que transforma uma simples página em uma máquina que funciona de verdade.', 'o que é um sistema web explicado simples', 1, 15),
(6, 'O que é um banco de dados?', 'A memória que nunca esquece. Enquanto uma variável no código some quando a página fecha, o banco de dados guarda tudo para sempre. Conceito essencial.', 'o que é banco de dados explicado simples', 2, 15),
(6, 'O que é um backend?', 'O cérebro que ninguém vê. O backend é como o servidor SHIELD da Marvel: fica nas sombras processando tudo enquanto o usuário só vê a interface bonita.', 'o que é backend e frontend diferença simples', 3, 15),
(6, 'Como descrever um sistema para a IA', 'O prompt completo para criar um sistema web funcional. Aprenda a especificar entidades, regras, fluxos e integrações de forma que a IA entenda e entregue.', 'como criar sistema web com IA do zero', 4, 15),
(6, 'O que é autenticação?', 'Login, usuários, senhas, tokens. A autenticação é a porta de entrada dos sistemas: quem pode entrar e quem não pode. Entenda o conceito e como pedir para a IA implementar.', 'o que é autenticação em sistemas web', 5, 15);

-- Módulo 7: O Profissional
INSERT INTO lessons (module_id, title, description, search_tip, order_index, xp_reward) VALUES
(7, 'Como planejar um projeto do zero', 'Brief, estrutura e entrega. Um profissional não sai codando: ele planeja. Aprenda a criar um roadmap de projeto que impressiona clientes e organiza sua execução.', 'como planejar projeto web do zero', 1, 15),
(7, 'Como apresentar para um cliente', 'A forma como você apresenta vale tanto quanto o que você criou. Aprenda a montar uma apresentação, conduzir a reunião e fazer o cliente dizer sim.', 'como apresentar projeto de site para cliente', 2, 15),
(7, 'Como precificar seu trabalho como criador com IA', 'Quanto cobrar por uma landing page? Por um sistema? Aprenda a precificar seu trabalho de forma justa e lucrativa, mesmo sendo jovem e usando IA.', 'como precificar serviços de criação de sites', 3, 15),
(7, 'Como entregar e passar o projeto ao cliente', 'O momento da entrega é profissional ou amador, depende de como você faz. Aprenda a documentar, entregar e fazer o handoff sem dor de cabeça.', 'como entregar projeto web para cliente', 4, 15),
(7, 'Como lidar com revisões do cliente', '"Pode mudar essa cor?" "Quero adicionar uma página". Revisões são parte do trabalho. Aprenda a gerenciar, limitar e cobrar por elas de forma profissional.', 'como gerenciar revisões de cliente projetos web', 5, 15);

-- ============================================================
-- STEP 6: SEED DATA — PROJECTS (MISSÕES)
-- ============================================================

INSERT INTO projects (title, description, level_name, sparks_reward, brl_reward, requirements, order_index) VALUES
(
    'Missão 1: Landing Page de Herói',
    'Sua primeira entrega real. Crie uma landing page de um produto ou serviço fictício e publique no ar. Essa é a prova de que você consegue.',
    'Aprendiz',
    100,
    50,
    '["Criar uma landing page de um produto ou serviço fictício", "Publicar no Vercel ou Netlify", "Ter título, descrição, imagem e botão de ação", "Me mandar o link funcionando"]'::jsonb,
    1
),
(
    'Missão 2: Site com 3 Páginas',
    'Suba o nível. Um site completo com navegação, formulário de contato e design responsivo. Mostre que você sabe criar experiências completas.',
    'Construtor',
    150,
    70,
    '["Home, Sobre e Contato", "Formulário de contato com validação", "Design responsivo (funcionar no celular)", "Publicado no ar com link"]'::jsonb,
    2
),
(
    'Missão 3: Dashboard de Dados',
    'Transforme números em poder visual. Crie um painel com métricas, gráficos e dados que contam uma história, mesmo que sejam fictícios.',
    'Analista',
    200,
    80,
    '["Pelo menos 4 cards com números/métricas", "Pelo menos 2 tipos de gráficos", "Dados podem ser fictícios", "Publicado e com link"]'::jsonb,
    3
),
(
    'Missão 4: Jogo no Browser',
    'Crie um jogo real que você mesmo joga. Precisa ter mecânica, pontuação e funcionar no navegador. A missão mais épica até agora.',
    'Game Dev',
    250,
    100,
    '["Jogo jogável no navegador", "Tem sistema de pontuação", "Publicado no ar", "Você mesmo consegue jogar e ganhar"]'::jsonb,
    4
),
(
    'Missão 5: Sistema com Formulário',
    'Construa algo que funciona de verdade. Um sistema que salva dados reais em um banco de dados e permite visualizá-los depois.',
    'Arquiteto',
    300,
    120,
    '["Formulário que salva dados no banco", "Tela para visualizar os dados salvos", "Funciona de verdade (não é só visual)", "Publicado com link"]'::jsonb,
    5
),
(
    'Missão 6: Landing Page Real',
    'Saiu do fictício. Crie uma landing page para um negócio real (família, amigo, vizinho). A pessoa aprova, você entrega, domínio conectado.',
    'Profissional',
    350,
    150,
    '["Para um negócio real (família, amigo, etc.)", "Com domínio conectado (pode ser grátis)", "A pessoa aprovou o resultado", "Me mandar o feedback da pessoa"]'::jsonb,
    6
),
(
    'Missão 7: App Completo',
    'O grande chefe. Você define o que criar. Backend, banco de dados, autenticação: tudo junto. Apresente para sua mãe antes de entregar.',
    'Mestre',
    500,
    200,
    '["Você define o que vai criar", "Tem backend + banco de dados", "Sistema de login ou autenticação", "Apresentação para a mãe antes de entregar"]'::jsonb,
    7
),
(
    'Missão 8: Projeto Livre 1',
    'Modo criativo desbloqueado. Ideia completamente sua, problema real, funcionando no ar. Você é um criador com IA. Mostre para o mundo.',
    'Lendário',
    600,
    230,
    '["Ideia completamente sua", "Resolve um problema real", "Está no ar funcionando", "Documentação básica de como usar"]'::jsonb,
    8
);

-- ============================================================
-- STEP 7: SEED DATA — ACHIEVEMENTS (CONQUISTAS)
-- ============================================================

INSERT INTO achievements (name, description, icon, condition_type, condition_value, sparks_bonus) VALUES
('Primeiro Passo',        'Completou a primeira aula. A jornada começa com um único passo.',             '🌱', 'lessons_completed',  1,    10),
('Aprendiz Acordado',     'Completou o Módulo 1: O Despertar. Você conhece seu poder.',                  '🌀', 'modules_completed',  1,    50),
('Mestre dos Prompts',    'Completou o Módulo 2: A Arte do Comando. Seus prompts são armas.',            '⚡', 'modules_completed',  2,    50),
('Publicou no Ar',        'Completou a Missão 1. Seu primeiro projeto está vivo na internet.',           '🚀', 'projects_completed', 1,   100),
('Construtor',            'Completou 3 projetos. Você está construindo seu portfólio de poder.',        '🏗️', 'projects_completed', 3,   200),
('Elite Builder',         'Completou 5 projetos. Você está entre os melhores.',                         '🔥', 'projects_completed', 5,   300),
('Lendário',              'Completou todos os módulos. Você dominou a arte de criar com IA.',            '👑', 'modules_completed',  7,   500),
('Milionário Iniciante',  'Ganhou R$500 com seus projetos. O dinheiro começa a entrar.',                '💰', 'brl_earned',         500,  200),
('O Criador',             'Ganhou R$1000 com seus projetos. Você é um criador profissional com IA.',    '💎', 'brl_earned',         1000, 1000),
('Maratonista',           'Completou 20 aulas. Consistência é o poder mais raro.',                      '⚡', 'lessons_completed',  20,  100);

-- ============================================================
-- DONE! VORTEX está pronto para decolar. 🚀
-- ============================================================
