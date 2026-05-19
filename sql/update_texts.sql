-- ============================================================
-- VORTEX UPDATE TEXTS SQL
-- Atualiza textos dos módulos e aulas já existentes no banco
-- Executa apenas UPDATEs nos registros alterados
-- ============================================================

-- ============================================================
-- MÓDULOS — títulos e descrições
-- ============================================================

-- Módulo 1: O Despertar (descrição com travessão removido)
UPDATE modules
SET description = 'Descubra o poder da IA: como as frutas do diabo, cada ferramenta tem um poder única esperando para ser dominado.'
WHERE order_index = 1 AND title = 'O Despertar';

-- Módulo 2: A Arte do Comando (descrição com travessão removido)
UPDATE modules
SET description = 'Aprenda a falar a língua da IA. Um bom prompt é como uma Haki bem treinada. Muda tudo.'
WHERE order_index = 2 AND title = 'A Arte do Comando';

-- Módulo 3: Mundos Visuais — Sites → Mundos Visuais: Sites
UPDATE modules
SET title = 'Mundos Visuais: Sites'
WHERE order_index = 3 AND title = 'Mundos Visuais — Sites';

-- Módulo 4: Arenas de Dados — Dashboards → Arenas de Dados: Dashboards
UPDATE modules
SET title = 'Arenas de Dados: Dashboards'
WHERE order_index = 4 AND title = 'Arenas de Dados — Dashboards';

-- Módulo 5: Reinos de Jogo — Games → Reinos de Jogo: Games (título e descrição)
UPDATE modules
SET title       = 'Reinos de Jogo: Games',
    description = 'Crie jogos jogáveis no browser. Mecânicas, sprites, pontuação: tudo com IA.'
WHERE order_index = 5 AND title = 'Reinos de Jogo — Games';

-- ============================================================
-- AULAS — MÓDULO 1 (O Despertar)
-- ============================================================

-- Aula 1/1: O que é IA? (descrição com travessão removido)
UPDATE lessons
SET description = 'Entenda o que é Inteligência Artificial usando a metáfora das frutas do diabo: cada IA tem um poder único esperando para ser desbloqueado. Assim como no Blox Fruits, você precisa saber qual poder usar em cada situação.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 1)
  AND order_index = 1;

-- Aula 1/2: Suas ferramentas de batalha (ferramentas corrigidas + travessão removido)
UPDATE lessons
SET description = 'Google Antigravity (para codar), Claude (para programar com IA) e GPT (para ideias e imagens): sua coleção de poderes. Cada ferramenta tem um uso ideal, como escolher o Vingador certo para cada missão. Aprenda quando usar cada uma.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 1)
  AND order_index = 2;

-- Aula 1/3: Como a IA "pensa" (travessão removido)
UPDATE lessons
SET description = 'Ela não pensa, prevê. É como o GPS que calcula o melhor caminho com base nos dados que tem. Entender isso muda como você faz seus pedidos e por que o contexto é tão importante.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 1)
  AND order_index = 3;

-- ============================================================
-- AULAS — MÓDULO 2 (A Arte do Comando)
-- ============================================================

-- Aula 2/4: Pedindo revisões e melhorias (travessão removido)
UPDATE lessons
SET description = 'A IA raramente acerta de primeira, e não precisa. Aprenda a iterar: peça melhorias, mudanças específicas, variações. É como treinar combos no Blox Fruits até dominar.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 2)
  AND order_index = 4;

-- Aula 2/5: Dividindo problemas grandes (travessão removido)
UPDATE lessons
SET description = 'Faça X, depois Y. Como missões em cadeia no Blox Fruits, aprenda a quebrar um projeto grande em partes pequenas que a IA consegue entregar perfeitamente.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 2)
  AND order_index = 5;

-- ============================================================
-- AULAS — MÓDULO 3 (Mundos Visuais: Sites)
-- ============================================================

-- Aula 3/1: Como um site funciona por dentro (travessão removido)
UPDATE lessons
SET description = 'HTML é a estrutura (os ossos), CSS é a roupa (o visual) e JS é o movimento (a ação). Você não precisa escrever isso, mas precisa entender para saber o que pedir.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 3)
  AND order_index = 1;

-- Aula 3/2: O que é uma landing page e quando usar (travessão removido)
UPDATE lessons
SET description = 'Uma landing page é a página de impacto: onde alguém chega e decide ficar ou ir embora. Aprenda quando usar, por que funciona e como pedir uma para a IA.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 3)
  AND order_index = 2;

-- Aula 3/4: O que é hospedagem? (travessão removido)
UPDATE lessons
SET description = 'Onde o site mora quando está no ar. Vercel e Netlify são como plataformas de lançamento: gratuitas e poderosas. Entenda o conceito antes de subir seu primeiro projeto.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 3)
  AND order_index = 4;

-- Aula 3/5: O que é um domínio? (travessão removido)
UPDATE lessons
SET description = 'O endereço do site: o que as pessoas digitam para chegar até você. Como comprar, onde registrar e quanto custa. Seu nome na internet.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 3)
  AND order_index = 5;

-- Aula 3/6: Como publicar no ar com Vercel (travessão removido)
UPDATE lessons
SET description = 'Do código ao site online em minutos. Passo a passo de como fazer deploy no Vercel, a plataforma favorita dos builders modernos.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 3)
  AND order_index = 6;

-- ============================================================
-- AULAS — MÓDULO 4 (Arenas de Dados: Dashboards)
-- ============================================================

-- Aula 4/1: O que é um dashboard e para que serve (travessão removido)
UPDATE lessons
SET description = 'Um dashboard é uma central de comando: como a interface do Jarvis do Homem de Ferro. Mostra os números que importam em tempo real para tomar decisões rápidas.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 4)
  AND order_index = 1;

-- Aula 4/3: Como pedir um painel à IA (travessão removido)
UPDATE lessons
SET description = 'O prompt completo para criar um dashboard profissional. Estrutura, dados, visual, responsividade: tudo no pedido certo para a IA entregar.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 4)
  AND order_index = 3;

-- Aula 4/4: O que é uma API? (travessão removido)
UPDATE lessons
SET description = 'A torneira que joga dados para o seu painel. Uma API é como um serviço de entrega: você pede os dados, ela entrega no formato que você precisa. Conceito fundamental.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 4)
  AND order_index = 4;

-- Aula 4/5: Como usar dados reais no seu dashboard (travessão removido)
UPDATE lessons
SET description = 'Conectar uma API real ao seu dashboard e ver dados ao vivo. Clima, preços, redes sociais: o mundo todo vira seu banco de dados.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 4)
  AND order_index = 5;

-- ============================================================
-- AULAS — MÓDULO 5 (Reinos de Jogo: Games)
-- ============================================================

-- Aula 5/2: Como descrever mecânicas (travessão removido)
UPDATE lessons
SET description = 'O que acontece quando o jogador pula, clica, colide, ganha pontos. Descrever mecânicas é a habilidade mais importante para criar jogos com IA. Aprenda a linguagem certa.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 5)
  AND order_index = 2;

-- Aula 5/4: Como hospedar um jogo simples no ar (travessão removido)
UPDATE lessons
SET description = 'Um jogo em HTML fica online em minutos. Aprenda a subir seu jogo no GitHub Pages ou Itch.io e compartilhar com amigos para jogar.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 5)
  AND order_index = 4;

-- Aula 5/5: Como fazer updates e melhorias no jogo (travessão removido)
UPDATE lessons
SET description = 'Adicionar fases, novos inimigos, power-ups, placar online. Aprenda a evolução constante, como as atualizações do Blox Fruits que todo mundo espera.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 5)
  AND order_index = 5;

-- ============================================================
-- AULAS — MÓDULO 6 (Sistemas e Apps)
-- ============================================================

-- Aula 6/3: O que é um backend? (travessão removido)
UPDATE lessons
SET description = 'O cérebro que ninguém vê. O backend é como o servidor SHIELD da Marvel: fica nas sombras processando tudo enquanto o usuário só vê a interface bonita.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 6)
  AND order_index = 3;

-- Aula 6/5: O que é autenticação? (travessão removido)
UPDATE lessons
SET description = 'Login, usuários, senhas, tokens. A autenticação é a porta de entrada dos sistemas: quem pode entrar e quem não pode. Entenda o conceito e como pedir para a IA implementar.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 6)
  AND order_index = 5;

-- ============================================================
-- AULAS — MÓDULO 7 (O Profissional)
-- ============================================================

-- Aula 7/1: Como planejar um projeto do zero (travessão removido)
UPDATE lessons
SET description = 'Brief, estrutura e entrega. Um profissional não sai codando: ele planeja. Aprenda a criar um roadmap de projeto que impressiona clientes e organiza sua execução.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 7)
  AND order_index = 1;

-- Aula 7/3: Como precificar seu trabalho como criador com IA (travessão removido)
UPDATE lessons
SET description = 'Quanto cobrar por uma landing page? Por um sistema? Aprenda a precificar seu trabalho de forma justa e lucrativa, mesmo sendo jovem e usando IA.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 7)
  AND order_index = 3;

-- Aula 7/4: Como entregar e passar o projeto ao cliente (travessão removido)
UPDATE lessons
SET description = 'O momento da entrega é profissional ou amador, depende de como você faz. Aprenda a documentar, entregar e fazer o handoff sem dor de cabeça.'
WHERE module_id = (SELECT id FROM modules WHERE order_index = 7)
  AND order_index = 4;

-- ============================================================
-- PROJETOS (MISSÕES)
-- ============================================================

-- Missão 3: Dashboard de Dados (travessão removido)
UPDATE projects
SET description = 'Transforme números em poder visual. Crie um painel com métricas, gráficos e dados que contam uma história, mesmo que sejam fictícios.'
WHERE order_index = 3 AND title = 'Missão 3: Dashboard de Dados';

-- Missão 6: Landing Page Real (travessão removido)
UPDATE projects
SET description = 'Saiu do fictício. Crie uma landing page para um negócio real (família, amigo, vizinho). A pessoa aprova, você entrega, domínio conectado.'
WHERE order_index = 6 AND title = 'Missão 6: Landing Page Real';

-- Missão 7: App Completo (travessão removido)
UPDATE projects
SET description = 'O grande chefe. Você define o que criar. Backend, banco de dados, autenticação: tudo junto. Apresente para sua mãe antes de entregar.'
WHERE order_index = 7 AND title = 'Missão 7: App Completo';

-- Missão 8: Projeto Livre 1 (travessão removido)
UPDATE projects
SET description = 'Modo criativo desbloqueado. Ideia completamente sua, problema real, funcionando no ar. Você é um criador com IA. Mostre para o mundo.'
WHERE order_index = 8 AND title = 'Missão 8: Projeto Livre 1';

-- ============================================================
-- DONE! Todos os textos foram atualizados.
-- ============================================================
