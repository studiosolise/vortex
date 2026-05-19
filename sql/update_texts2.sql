-- ============================================================
-- VORTEX — Correção de travessões nos campos content
-- Execute no Supabase SQL Editor
-- Atualiza APENAS o campo content das aulas que foram alteradas
-- ============================================================

-- ------------------------------------------------------------
-- MÓDULO 1 — Aula 1: O que é IA?
-- Travessões em: "o ChatGPT comeu... — ele sabe", "Claude... — raciocina",
-- "Midjourney... — cria", "bilhões de textos — artigos", "com precisão — como",
-- "ela prevê — ela prevê", "cada uma tem seu ponto forte", "sites, jogos, sistemas, artes"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula1$
<p>Imagina que cada IA do mercado comeu uma <strong>Fruta do Diabo</strong> diferente. O ChatGPT comeu a Fruta do Generalista: ele sabe de quase tudo. O Claude comeu a Fruta da Escrita: raciocina mais fundo e escreve melhor. O Midjourney comeu a Fruta da Visão: cria imagens incríveis. Cada um tem um poder diferente, e o segredo é saber qual usar em cada situação.</p>

<p>Mas o que é a inteligência artificial de verdade? Ela <strong>não pensa</strong>. Ela aprendeu com bilhões de textos (artigos, livros, conversas, sites) e agora consegue prever o que faz sentido dizer a seguir. É parecido com o GPS: ele não "conhece" as ruas. Ele só calcula qual sequência de caminhos faz mais sentido com base nos dados que tem. A IA faz isso com palavras.</p>

<p>Por isso a IA é tão poderosa nas mãos de quem sabe usar: você dá os dados certos (o prompt), ela encontra o melhor caminho. E ao longo desse curso, você vai aprender exatamente como dar esses comandos com precisão, como um capitão que sabe dar ordens para o navegador mais inteligente do mundo.</p>

<ul>
  <li><strong>IA aprende com dados:</strong> ela foi treinada com bilhões de textos antes de ser lançada.</li>
  <li><strong>Ela não tem consciência:</strong> ela não pensa nem sente. Ela prevê a próxima palavra.</li>
  <li><strong>Cada ferramenta tem um poder diferente:</strong> ChatGPT, Claude, Midjourney, Google Antigravity, cada uma com seu ponto forte.</li>
  <li><strong>Você é o responsável:</strong> a IA é uma ferramenta. Quem toma a decisão final és você.</li>
  <li><strong>Você vai USAR esse poder para criar coisas reais:</strong> sites, jogos, sistemas, artes.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Me explique o que é inteligência artificial como se eu tivesse 14 anos e jogasse Blox Fruits. Use metáforas do jogo para explicar os conceitos técnicos."</em></p>
$aula1$ WHERE title ILIKE '%o que é ia%' OR title ILIKE '%o que e ia%' OR title ILIKE '%what is ai%';

-- ------------------------------------------------------------
-- MÓDULO 1 — Aula 2: Suas ferramentas de batalha
-- Reescrita completa: remove ChatGPT como principal, Cursor, Windsurf, Bolt, v0
-- Adiciona Google Antigravity, mantém Claude, adiciona GPT (para ideias e imagens)
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula2$
<p>Todo jogador sério no Roblox sabe que o inventário certo faz toda a diferença. Você não vai para uma batalha épica só com um item básico, né? Com IA é a mesma coisa: você tem um <strong>inventário de ferramentas</strong>, e cada uma tem seu slot ideal.</p>

<p><strong>Google Antigravity</strong> é a sua IDE de batalha. É uma ferramenta da Google, baseada no VS Code, feita para codar com IA do seu lado em tempo real. Você escreve o que quer criar e o código aparece na sua frente. É como ter um parceiro de raid que sabe programar qualquer coisa. <strong>Claude</strong> é o cajado de magia: raciocina fundo, escreve com qualidade, é perfeito para pensar junto em projetos complexos e para gerar código inteligente. <strong>GPT</strong> é o seu aliado de ideias e imagens: ótimo para brainstorming, para criar textos, e para gerar imagens com o DALL-E integrado.</p>

<p>A boa notícia: você <strong>não precisa pagar por todas</strong>. O Google Antigravity tem plano gratuito para começar. O Claude também. O GPT tem versão gratuita para uso básico. Ao longo do curso, você vai conhecendo cada ferramenta na prática, usando a certa para cada missão.</p>

<ul>
  <li><strong>Google Antigravity:</strong> IDE da Google para codar com IA em tempo real, baseado no VS Code.</li>
  <li><strong>Claude:</strong> melhor para raciocínio profundo, escrita longa e geração de código inteligente.</li>
  <li><strong>GPT:</strong> ótimo para ideias, textos criativos e geração de imagens com DALL-E.</li>
  <li><strong>Cada ferramenta tem limite de uso gratuito:</strong> aprenda a gerenciar e combine as três.</li>
  <li><strong>Você é o jogador:</strong> as ferramentas são sua equipe. Você decide quem entra em campo.</li>
</ul>

<p><strong>Exemplo de prompt para testar o Claude:</strong><br>
<em>"Você é meu assistente pessoal de criação. Me dê 3 ideias criativas de projetos que um estudante de 14 anos poderia criar usando IA, listando qual ferramenta usar em cada uma e por quê."</em></p>
$aula2$ WHERE title ILIKE '%ferramentas de batalha%' OR title ILIKE '%suas ferramentas%';

-- ------------------------------------------------------------
-- MÓDULO 1 — Aula 3: Como a IA "pensa"
-- Travessões em: "ela usa os dados... — ela usa", "precisas — Mas lembre",
-- "Você é o Luffy... — a decisão", "executa suas ordens — executa"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula3$
<p>Lembra da Nami calculando a rota para o próximo arco no One Piece? Ela não conhece cada metro do oceano. Ela usa os dados do clima, das correntes e dos mapas para calcular a rota mais provável. A IA faz exatamente o mesmo, mas com palavras. Ela analisa o que você escreveu e calcula qual é a sequência de palavras mais provável que faria sentido vir a seguir.</p>

<p>Isso se chama <strong>previsão estatística</strong>. Cada vez que você digita uma frase para a IA, ela calcula milhões de probabilidades em frações de segundo para decidir o que responder. Por isso ela parece tão inteligente: ela processou tantos textos que suas previsões são incrivelmente precisas. Mas lembre, ela está <em>prevendo</em>, não pensando.</p>

<p>E esse é o ponto mais importante que você vai aprender hoje: <strong>a IA pode errar com total confiança</strong>. Se ela aprendeu algo errado, vai repetir o erro como se fosse verdade absoluta. Por isso você, como o capitão, precisa checar o que ela entrega antes de usar. Você é o Luffy da tripulação. A decisão final é sempre sua.</p>

<ul>
  <li><strong>Ela prevê, não pensa:</strong> cada resposta é uma sequência de probabilidades calculadas.</li>
  <li><strong>Pode errar com confiança:</strong> ela não sabe que está errando, então sempre revise.</li>
  <li><strong>Você é o capitão:</strong> a IA é a navegadora. Executa suas ordens com maestria.</li>
  <li><strong>Sempre revise o resultado:</strong> especialmente em fatos, datas e números.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Explique de forma simples como a previsão estatística funciona em uma IA de linguagem. Use uma analogia com navegação no mar."</em></p>
$aula3$ WHERE title ILIKE '%como a ia pensa%' OR title ILIKE '%como a ia "pensa"%';

-- ------------------------------------------------------------
-- MÓDULO 1 — Aula 4: Seu primeiro prompt
-- Travessões em: "treinando com o avô — você vai", "você pode refazer — você pode",
-- "só prompts que podem melhorar"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula4$
<p>Chegou a hora. Como o Luffy dando o primeiro soco depois de anos treinando com o avô: você vai usar o poder pela primeira vez de verdade. Um <strong>prompt</strong> é simplesmente uma instrução, uma ordem, um pedido. É o que você digita para a IA para dizer o que quer que ela faça.</p>

<p>A diferença entre um prompt fraco e um prompt poderoso é enorme. Olha a diferença: <em>"me dá uma ideia de negócio"</em> vs <em>"Você é um consultor de negócios experiente. Estou com 14 anos e quero começar a ganhar dinheiro online usando inteligência artificial. Me dê 5 ideias de pequenos negócios que eu poderia criar usando apenas um computador."</em> O segundo prompt tem contexto, tem papel, tem objetivo. O resultado vai ser completamente diferente.</p>

<p>Agora abra o Claude (claude.ai) e faça seu primeiro pedido de verdade. Não tenha medo de errar. Você pode refazer quantas vezes quiser. O importante é começar. Cada prompt que você escreve é um treino para se tornar um mestre.</p>

<ul>
  <li><strong>Prompt = instrução:</strong> é o que você diz para a IA fazer.</li>
  <li><strong>Seja específico:</strong> quanto mais detalhes, melhor o resultado.</li>
  <li><strong>Inclua contexto:</strong> quem você é, o que quer, para quem é.</li>
  <li><strong>Itere sem medo:</strong> não existe prompt "errado", só prompts que podem melhorar.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Você é um consultor de negócios. Me dê 5 ideias de pequenos negócios que um jovem de 14 anos poderia criar usando apenas um computador e inteligência artificial. Para cada ideia, explique em 2 linhas como funciona e quanto poderia ganhar por mês."</em></p>
$aula4$ WHERE title ILIKE '%primeiro prompt%' OR title ILIKE '%seu primeiro prompt%';

-- ------------------------------------------------------------
-- MÓDULO 1 — Aula 5: O que a IA não consegue fazer
-- Travessões em: "conquistou tudo — Mas ainda assim", "referências falsas — e fazer",
-- "é estratégia", "sempre revise antes de publicar"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula5$
<p>O Gol D. Roger foi o pirata mais poderoso que já existiu. Chegou ao fim do Grand Line, conquistou tudo. Mas ainda assim, era mortal. A IA é parecida: incrivelmente poderosa, mas tem limites reais que você precisa conhecer para não ser pego de surpresa.</p>

<p>Primeiro: a IA tem <strong>data de corte</strong>. Ela foi treinada até uma certa data e não sabe o que aconteceu depois disso. Perguntar sobre eventos recentes pode gerar respostas desatualizadas ou inventadas. Segundo: ela <strong>alucina</strong>. Isso significa que ela pode inventar fatos, citar livros que não existem, criar referências falsas, e fazer isso com toda a confiança do mundo. Terceiro: ela não <strong>executa no mundo real sozinha</strong>. Ela cria código, mas não faz o deploy. Ela escreve e-mails, mas não os envia. Você precisa executar a ação final.</p>

<p>Conhecer os limites não é fraqueza: é estratégia. O bom jogador sabe onde cada personagem é mais fraco e joga em torno disso. Você vai usar a IA nos pontos onde ela é invencível e vai tomar as rédeas quando chegar nos limites dela.</p>

<ul>
  <li><strong>Data de corte:</strong> ela não sabe o que aconteceu recentemente. Sempre verifique datas.</li>
  <li><strong>Alucinação:</strong> ela pode inventar fatos com confiança. Verifique o que for crítico.</li>
  <li><strong>Sem acesso à internet em tempo real</strong> (a menos que tenha plugin ativo).</li>
  <li><strong>Não executa sozinha:</strong> ela cria, você implementa.</li>
  <li><strong>Você é o responsável pelo resultado final:</strong> sempre revise antes de publicar.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Quais são as principais limitações das IAs de linguagem como você? Seja honesto sobre o que você não consegue fazer bem e explique como eu posso contornar cada uma dessas limitações."</em></p>
$aula5$ WHERE title ILIKE '%o que a ia não consegue%' OR title ILIKE '%limites da ia%' OR title ILIKE '%o que a ia nao consegue%';

-- ------------------------------------------------------------
-- MÓDULO 2 — Aula 1: Prompt ruim vs Prompt bom
-- Travessões em: "é fácil — você clica", "é informação"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula6$
<p>Dar missão para um NPC do Blox Fruits é simples: você clica e tem 3 opções no máximo. Mas dar missão para um jogador humano de alto nível? Você explica o contexto, o objetivo, a recompensa, o prazo, tudo. Com a IA é exatamente assim: um prompt vago dá resultado de NPC. Um prompt detalhado desbloqueia o verdadeiro poder.</p>

<p>Olha essa diferença na prática. Prompt ruim: <em>"faz um site"</em>. Resultado: um site genérico, sem personalidade, que não serve para nada específico. Prompt bom: <em>"Crie uma landing page para um personal trainer chamado João, que atende adultos entre 25 e 40 anos em São Paulo. O site precisa ter: seção hero com foto de fundo e botão de contato, seção de serviços (musculação, emagrecimento, condicionamento), depoimentos de 3 clientes, e formulário de contato. Estilo moderno e energético, cores preto e laranja."</em> Resultado: um site profissional, completo, com identidade.</p>

<p>A diferença não é magia. É informação. Quanto mais contexto você dá, menos a IA precisa adivinhar, e menos ela vai inventar coisas que você não quer.</p>

<ul>
  <li><strong>Seja específico:</strong> quanto mais detalhes, melhor o resultado.</li>
  <li><strong>Diga o contexto:</strong> para quem é, qual o negócio, qual a situação.</li>
  <li><strong>Defina o objetivo:</strong> o que o resultado deve alcançar.</li>
  <li><strong>Descreva o estilo e tom:</strong> formal, criativo, técnico, divertido.</li>
  <li><strong>Diga o que NÃO quer:</strong> evita que a IA vá por caminhos errados.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Compare esses dois prompts e me diga qual vai gerar um resultado melhor e por quê: 1) 'crie um logo' vs 2) 'crie um logo para uma barbearia masculina chamada Barba Negra, em estilo vintage, usando as cores preto e dourado, com uma navalha como elemento central'."</em></p>
$aula6$ WHERE title ILIKE '%prompt ruim%' OR title ILIKE '%prompt bom%' OR title ILIKE '%prompt ruim vs%';

-- ------------------------------------------------------------
-- MÓDULO 2 — Aula 2: Dar contexto é tudo
-- Travessão em: "uma equipe de verdade — e é o que"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula7$
<p>Imagina o Capitão América convocando os Vingadores para uma missão sem dar o briefing. Ele chega e fala: "Vamos lá, pessoal!" E vai embora. O Hulk ia sair quebrando tudo. O Homem de Ferro ia fazer o que bem entendesse. Hawkeye ia se perguntar para onde atirar. Contexto é o que transforma um grupo de super-heróis em uma equipe de verdade. E é o que transforma uma IA genérica em um assistente especializado no <em>seu</em> problema.</p>

<p>A IA não sabe nada sobre você quando a conversa começa. Ela não sabe que você tem 14 anos, que está no Brasil, que quer ganhar dinheiro, que o público do cliente é idosos ou jovens. Você precisa <strong>construir o contexto</strong> antes de fazer o pedido. Quanto mais contexto você dá, mais personalizada e útil fica a resposta.</p>

<p>Uma técnica poderosa: construa o prompt em camadas. Comece com quem você é. Adicione o objetivo. Depois o público. Por fim o que você quer criado. Veja como cada camada melhora o resultado.</p>

<ul>
  <li><strong>Quem você é:</strong> "Sou um estudante de 14 anos que está aprendendo a criar com IA..."</li>
  <li><strong>Qual o contexto do projeto:</strong> cliente, negócio, situação atual.</li>
  <li><strong>Para quem é:</strong> público-alvo, faixa etária, interesses.</li>
  <li><strong>Qual o objetivo final:</strong> vender, informar, entreter, captar leads.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Sou um jovem de 14 anos que está aprendendo a criar sites com IA. Estou criando meu primeiro projeto para um cliente real: uma loja de roupas femininas que atende mulheres de 20 a 35 anos em Salvador. O objetivo é criar uma landing page que faça as visitantes entrar em contato pelo WhatsApp. Me ajude a montar o briefing completo antes de criar o site."</em></p>
$aula7$ WHERE title ILIKE '%dar contexto%' OR title ILIKE '%contexto é tudo%' OR title ILIKE '%contexto e tudo%';

-- ------------------------------------------------------------
-- MÓDULO 2 — Aula 3: A técnica do Role
-- Travessões em: "missão de furtividade — Com a IA", "perspectivas de mercado — e responde"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula8$
<p>Os Vingadores têm vários especialistas no time. E o Nick Fury é inteligente o suficiente para convocar o especialista certo para cada missão. Você não manda o Hulk resolver uma negociação diplomática, nem o Homem de Ferro para uma missão de furtividade. Com a IA é exatamente assim: quando você diz <strong>"você é um [especialista]"</strong>, ela muda completamente como responde.</p>

<p>Isso se chama <strong>Role Prompting</strong> (ou dar um papel para a IA). Quando você diz "você é um designer sênior com 15 anos de experiência em marcas de luxo", a IA ativa todo o conhecimento que tem sobre design de luxo, vocabulário técnico de design, perspectivas de mercado, e responde como esse especialista responderia. Experimente comparar: "me dê dicas de design" vs "você é um designer sênior especializado em identidade visual para pequenas empresas, me dê 5 dicas práticas de design para um iniciante".</p>

<p>Você pode combinar roles com contexto para resultados ainda mais precisos. E o melhor: pode pedir que a IA mantenha o papel durante toda a conversa, como se fosse um consultor permanente.</p>

<ul>
  <li><strong>Use roles para qualquer tarefa especializada:</strong> designer, copywriter, professor, CEO...</li>
  <li><strong>Combine role + contexto + objetivo</strong> para o resultado mais preciso possível.</li>
  <li><strong>Peça que mantenha o role:</strong> "durante toda essa conversa, você é meu consultor de negócios."</li>
  <li><strong>Seja específico no role:</strong> "designer sênior de UX" é melhor que apenas "designer".</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"A partir de agora, você é meu mentor de empreendedorismo jovem, com experiência em ajudar adolescentes a criarem seus primeiros negócios digitais. Você fala de forma direta, sem rodeios, e usa exemplos práticos. Minha primeira pergunta é: como eu consigo meu primeiro cliente para criar um site?"</em></p>
$aula8$ WHERE title ILIKE '%técnica do role%' OR title ILIKE '%tecnica do role%' OR title ILIKE '%a técnica do role%';

-- ------------------------------------------------------------
-- MÓDULO 2 — Aula 4: Pedindo revisões e melhorias
-- Travessões em: "exatamente assim — iterar é", "o segundo parágrafo está muito longo — divide"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula9$
<p>No Blox Fruits, você não espera dropar o item perfeito na primeira tentativa de boss. Você faz o farm, pega o item, vê os atributos, decide o que está bom e o que precisa melhorar, e tenta de novo. Criar com IA funciona exatamente assim. <strong>Iterar é o segredo dos melhores resultados.</strong></p>

<p>O erro mais comum de iniciante é aceitar a primeira resposta da IA como final. A primeira versão é o rascunho. Você precisa pedir melhorias específicas. E o segredo aqui é: nunca comece do zero. Diga o que está bom e o que quer mudar. <em>"Gostei da estrutura, mas o tom ficou muito formal. Reescreva mantendo a mesma estrutura, mas com uma linguagem mais descontraída e próxima."</em> Isso é infinitamente mais poderoso que "reescreve isso".</p>

<p>Você tem o poder de guiar a IA com precisão cirúrgica. Cada pedido de revisão é uma oportunidade de chegar mais perto do resultado perfeito. Profissionais que usam IA sabem que 3 a 5 iterações geralmente entregam algo que valeria horas de trabalho manual.</p>

<ul>
  <li><strong>Nunca aceite a primeira versão como final.</strong> Sempre há espaço para melhorar.</li>
  <li><strong>Diga o que está bom:</strong> "mantém a estrutura, mas muda o tom."</li>
  <li><strong>Seja específico sobre o que mudar:</strong> "mais profissional", "mais simples", "mais criativo".</li>
  <li><strong>Iterar é normal e esperado:</strong> 3 a 5 rodadas é o padrão profissional.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Gostei do texto que você criou, mas preciso de 3 ajustes: 1) o título precisa ser mais impactante, 2) o segundo parágrafo está muito longo, divide em dois, 3) adiciona uma chamada para ação no final convidando o leitor a entrar em contato pelo WhatsApp. Refaça apenas essas partes, mantendo o resto igual."</em></p>
$aula9$ WHERE title ILIKE '%revisões e melhorias%' OR title ILIKE '%revisoes e melhorias%' OR title ILIKE '%pedindo revisões%';

-- ------------------------------------------------------------
-- MÓDULO 2 — Aula 5: Dividindo problemas grandes
-- Travessões em: "execute fase por fase", "uma fase de cada vez — testando"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula10$
<p>No Blox Fruits, as missões épicas têm fases. Você não chega no Sea 3 no primeiro dia. Existe uma progressão: começa no primeiro mar, desbloqueia ilhas, completa missões menores, e vai construindo poder aos poucos. Tentar pular direto para o boss final sem preparação é garantia de derrota. Projetos com IA funcionam exatamente assim.</p>

<p>Quando você joga tudo em um único prompt gigantesco, como "cria um site completo com sistema de login, pagamentos, blog, loja e chat ao vivo", a IA vai tentar fazer tudo ao mesmo tempo e vai perder qualidade em cada parte. A técnica certa é <strong>quebrar o problema em fases</strong>. Primeiro peça o plano. Depois execute fase por fase.</p>

<p>Comece sempre assim: <em>"Antes de começar, me faça um plano passo a passo de tudo que precisamos fazer para criar [projeto]."</em> Você revisa o plano, ajusta, e só aí começa a executar, uma fase de cada vez, testando antes de avançar.</p>

<ul>
  <li><strong>Comece sempre pedindo um plano:</strong> "antes de executar, me dê o plano completo."</li>
  <li><strong>Confirme o plano antes de executar:</strong> ajuste o que não faz sentido.</li>
  <li><strong>Execute uma fase por vez:</strong> não misture tudo no mesmo prompt.</li>
  <li><strong>Teste cada fase antes de avançar:</strong> um problema na fase 1 quebra tudo na fase 3.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Quero criar uma landing page profissional para um fotógrafo de casamentos. Antes de começar a criar qualquer código, me dê um plano detalhado com todas as fases do projeto: estrutura, design, textos, publicação. Liste cada etapa com o que preciso fazer em cada uma."</em></p>
$aula10$ WHERE title ILIKE '%dividindo problemas%' OR title ILIKE '%problemas grandes%';

-- ------------------------------------------------------------
-- MÓDULO 2 — Aula 6: Seu grimório de prompts
-- Travessões em: "grimório — um livro", "é um ativo, não um descartável"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula11$
<p>No Fairy Tail, cada mago tem um grimório: um livro de magias pessoal que representa o seu poder. As magias que você domina ficam registradas ali. No mundo da IA, seu grimório pessoal é a sua coleção de prompts que funcionaram. E assim como no anime, esse livro vale ouro.</p>

<p>Todo prompt bom que você criar tem valor. Se você encontrou um prompt que gera resultados incríveis para criar landing pages, esse prompt pode te economizar horas no próximo projeto. Se você tem um prompt perfeito para criar textos de WhatsApp, ele pode ser reutilizado dezenas de vezes. Prompts salvos são <strong>ativos do seu negócio</strong>.</p>

<p>A forma mais simples de organizar: uma pasta no Notion ou um arquivo de texto com categorias. Sites e landing pages. Textos e copywriting. Logos e identidade visual. Jogos e apps. Salve o prompt, o contexto de quando usar, e o resultado que gerou. Com o tempo, você vai ter um arsenal que nenhuma IA sozinha consegue replicar.</p>

<ul>
  <li><strong>Salve sempre os prompts que geraram bons resultados:</strong> é um ativo, não um descartável.</li>
  <li><strong>Anote o contexto de uso:</strong> "este prompt funciona bem para clientes de beleza."</li>
  <li><strong>Organize por categorias:</strong> sites, textos, logos, jogos, sistemas.</li>
  <li><strong>Compartilhe com cuidado:</strong> seus melhores prompts são seus segredos de batalha.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Me ajude a criar um template de prompt para criar landing pages profissionais. O template deve ter espaços para preencher com: nome do negócio, público-alvo, serviços oferecidos, estilo visual desejado e objetivo principal da página. Formate como um documento que posso salvar e reutilizar."</em></p>
$aula11$ WHERE title ILIKE '%grimório%' OR title ILIKE '%grimorio%' OR title ILIKE '%grimório de prompts%';

-- ------------------------------------------------------------
-- MÓDULO 3 — Aula 1: Como um site funciona por dentro
-- Travessões em: "esqueleto (a estrutura do corpo — ossos)", "a roupa (a aparência, o estilo — as roupas)",
-- "HTML é o esqueleto — define", "CSS é a roupa — define", "JavaScript é as habilidades — cria",
-- "HTML = estrutura: o que existe na página — texto"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula12$
<p>Um personagem do One Piece tem três partes essenciais: o <strong>esqueleto</strong> (a estrutura do corpo, os ossos do Brook), a <strong>roupa</strong> (a aparência, o estilo de cada tripulante), e as <strong>habilidades</strong> (os poderes especiais que os diferenciam). Um site funciona exatamente assim, com três camadas: HTML, CSS e JavaScript.</p>

<p><strong>HTML</strong> é o esqueleto. Define a estrutura e o conteúdo: títulos, parágrafos, imagens, botões, formulários. É o que existe, mas ainda sem aparência. <strong>CSS</strong> é a roupa. Define cores, tamanhos, fontes, espaçamentos, animações. É o que faz o site ser bonito ou feio. <strong>JavaScript</strong> é as habilidades. Cria interações, animações, carregamento de dados. É o que faz o site "fazer coisas" quando você clica.</p>

<p>A boa notícia: você <strong>não precisa aprender a escrever esses códigos</strong>. Você precisa entender o que cada um faz para conseguir pedir certo à IA. Quando você pede "um botão azul que muda de cor quando passa o mouse", você está pedindo CSS. Quando pede "um menu que aparece ao clicar", você está pedindo JavaScript. Agora você sabe a linguagem.</p>

<ul>
  <li><strong>HTML = estrutura:</strong> o que existe na página (texto, imagens, botões).</li>
  <li><strong>CSS = aparência:</strong> cores, fontes, tamanhos, animações visuais.</li>
  <li><strong>JavaScript = comportamento:</strong> o que acontece quando o usuário interage.</li>
  <li><strong>Você não precisa escrever:</strong> precisa entender para pedir certo à IA.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Crie uma página HTML simples com um botão roxo centralizado que, ao ser clicado, mostra uma mensagem de boas-vindas animada. Explique em comentários no código o que cada parte faz (HTML, CSS e JavaScript)."</em></p>
$aula12$ WHERE title ILIKE '%como um site funciona%' OR title ILIKE '%como um site%';

-- ------------------------------------------------------------
-- MÓDULO 3 — Aula 2: O que é uma landing page e quando usar
-- Travessões em: "Tudo ali — a arquitetura", "um CTA final (Call to Action — o botão de ação)"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula13$
<p>No Blox Fruits, a entrada de um castelo foi projetada com um único objetivo: fazer você entrar. Tudo ali (a arquitetura, a música ambiente, os NPCs na porta) existe para te puxar para dentro. Uma <strong>landing page</strong> foi construída com a mesma filosofia: uma única página, com um único objetivo, para fazer o visitante tomar uma ação específica.</p>

<p>Landing page é diferente de "site". Um site tem várias páginas, várias informações, vários destinos. Uma landing page é foco total: o visitante "aterrissa" nela vindo de um link ou anúncio, e tudo na página existe para fazer ele <strong>comprar, assinar, ou entrar em contato</strong>. Nada mais. Por isso a taxa de conversão de landing pages é muito maior que a de sites comuns.</p>

<p>Uma boa landing page tem: seção hero (título impactante + imagem + botão), seção de problema e solução, seção de serviços ou produtos, prova social (depoimentos), e um CTA final (Call to Action, ou seja, o botão de ação). É essa estrutura que você vai aprender a criar com IA.</p>

<ul>
  <li><strong>Uma página, um objetivo:</strong> vender, captar contato, ou gerar assinatura.</li>
  <li><strong>CTA claro e visível:</strong> o botão de ação principal deve ser óbvio.</li>
  <li><strong>Depoimentos geram confiança:</strong> prova social é fundamental.</li>
  <li><strong>Proposta clara:</strong> em 5 segundos, o visitante precisa entender o que você oferece.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"O que é uma landing page de alta conversão? Me explique os elementos essenciais e por que cada um existe. Depois me dê um exemplo de estrutura para uma landing page de um serviço de criação de sites para pequenas empresas."</em></p>
$aula13$ WHERE title ILIKE '%o que é uma landing page%' OR title ILIKE '%landing page%' AND title NOT ILIKE '%pedir%' AND title NOT ILIKE '%hosped%';

-- ------------------------------------------------------------
-- MÓDULO 3 — Aula 3: Como pedir um site completo à IA
-- Travessão em: "metade do tráfego é pelo celular"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula14$
<p>Você já sabe o que é uma landing page. Agora vem a parte mais poderosa: pedir para a IA criar uma do zero em minutos. O segredo está na estrutura do prompt. Um prompt de site bem feito tem seis elementos: contexto do negócio, público-alvo, seções necessárias, estilo visual, tom do texto e tecnologia preferida. Com esses seis elementos, o resultado é profissional.</p>

<p>Veja um exemplo completo: <em>"Crie uma landing page em HTML, CSS e JavaScript em um único arquivo para um personal trainer chamado Carlos, especializado em emagrecimento para mulheres entre 30 e 50 anos em São Paulo. Seções: hero com frase de impacto e botão de WhatsApp, apresentação pessoal, 3 serviços (musculação, funcional, online), depoimentos de 3 clientes com nome e foto placeholder, e formulário de contato. Estilo: moderno e energético, cores verde escuro e branco, fonte sem serifa. Tom: motivador e acolhedor. Responsivo para mobile."</em></p>

<p>Observe cada elemento: quem é o cliente, quem é o público, quais seções, como deve parecer, qual o tom, e que seja responsivo. Com esse nível de detalhe, a IA entrega algo que você pode mostrar para um cliente de verdade.</p>

<ul>
  <li><strong>Contexto do negócio:</strong> nome, área, localização, diferencial.</li>
  <li><strong>Público-alvo:</strong> idade, gênero, interesses, dores.</li>
  <li><strong>Seções específicas:</strong> hero, sobre, serviços, depoimentos, contato.</li>
  <li><strong>Estilo visual:</strong> cores, fontes, referências estéticas.</li>
  <li><strong>Peça sempre responsivo para mobile:</strong> metade do tráfego é pelo celular.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Crie uma landing page completa em um único arquivo HTML para uma barbearia premium chamada 'Black Steel', localizada em São Paulo, que atende homens de 20 a 45 anos. Seções: hero com video background placeholder, serviços (corte, barba, hidratação), galeria de fotos placeholder, agendamento online via WhatsApp, e endereço. Cores: preto, dourado e branco. Estilo sofisticado e masculino. Totalmente responsivo."</em></p>
$aula14$ WHERE title ILIKE '%pedir um site%' OR title ILIKE '%site completo à ia%' OR title ILIKE '%site completo a ia%';

-- ------------------------------------------------------------
-- MÓDULO 3 — Aula 4: O que é hospedagem?
-- Travessões em: "loja incrível — decoração", "site estático (só exibe conteúdo — como uma landing page)",
-- "Hospedagem = onde o site mora — sem ela", "Vercel é gratuito para projetos estáticos — ideal"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula15$
<p>Pensa assim: você criou uma loja incrível. Decoração perfeita, produtos ótimos, atendimento impecável. Mas a loja não tem endereço físico. Ela não existe em lugar nenhum. Ninguém vai conseguir te encontrar. <strong>Hospedagem</strong> é o "aluguel do espaço" para a sua loja digital existir na internet. Sem hospedagem, o site fica só no seu computador.</p>

<p>A boa notícia: você não precisa pagar nada para começar. <strong>Vercel</strong> e <strong>Netlify</strong> são serviços de hospedagem gratuita para sites estáticos. Site estático é aquele que só exibe conteúdo, como uma landing page ou portfólio. Você sobe o arquivo HTML, e em 30 segundos ele está online com um link que funciona em qualquer dispositivo do mundo.</p>

<p>Existe uma diferença importante: <strong>site estático</strong> (só mostra conteúdo, não salva dados de usuários) vs <strong>site dinâmico</strong> (tem login, banco de dados, processa pedidos). Landing pages são estáticas, e são as que você vai criar primeiro. Para projetos estáticos, Vercel é a melhor escolha: gratuito, rápido e fácil.</p>

<ul>
  <li><strong>Hospedagem = onde o site mora na internet:</strong> sem ela, ninguém acessa.</li>
  <li><strong>Vercel é gratuito</strong> para projetos estáticos, ideal para começar.</li>
  <li><strong>Site estático vs dinâmico:</strong> landing pages são estáticas, sistemas são dinâmicos.</li>
  <li><strong>URL automática:</strong> o Vercel gera um link funcionando na hora do upload.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Me explique a diferença entre site estático e site dinâmico com exemplos práticos. Depois me dê um passo a passo simples para hospedar um arquivo HTML no Vercel de graça, sem cartão de crédito."</em></p>
$aula15$ WHERE title ILIKE '%o que é hospedagem%' OR title ILIKE '%hospedagem%' AND title NOT ILIKE '%domínio%' AND title NOT ILIKE '%dominio%' AND title NOT ILIKE '%publicar%';

-- ------------------------------------------------------------
-- MÓDULO 3 — Aula 5: O que é um domínio?
-- Travessões em: "domínio é o nome do seu barco — é o endereço",
-- "Registro.br é o lugar oficial para domínios .com.br — custa",
-- "Domínio = nome do seu site na internet — o que as pessoas digitam"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula16$
<p>No One Piece, todo pirata de respeito tem um barco com nome. O Thousand Sunny, o Moby Dick, o Going Merry. O nome do barco é como as pessoas conhecem aquela tripulação. Na internet, o <strong>domínio</strong> é o nome do seu barco. É o endereço que as pessoas vão digitar para te encontrar.</p>

<p>Sem domínio personalizado, seu site fica em um endereço como <em>meusite.vercel.app</em>. Com um domínio próprio, fica <em>meusite.com.br</em>. A diferença em percepção de profissionalismo é enorme. Para clientes, um domínio próprio transmite que você é sério. Para você, é a sua identidade na internet.</p>

<p>Onde comprar: o <strong>Registro.br</strong> é o lugar oficial para domínios .com.br. Custa em torno de R$40 por ano e é o mais confiável no Brasil. Para domínios .com (sem o br), o <strong>Hostinger</strong> e o <strong>GoDaddy</strong> são ótimas opções. A dica profissional: compre o domínio separado da hospedagem. Assim você tem flexibilidade para mover o site para qualquer servidor no futuro.</p>

<ul>
  <li><strong>Domínio = nome do seu site na internet:</strong> o que as pessoas digitam para te achar.</li>
  <li><strong>Domínio .com.br custa ~R$40/ano</strong> no Registro.br.</li>
  <li><strong>Você escolhe o nome:</strong> antes de criar, verifique se o domínio está disponível.</li>
  <li><strong>Compre separado da hospedagem</strong> para ter flexibilidade.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Me ajude a escolher um bom nome de domínio para um jovem empreendedor de 14 anos que vai criar sites e apps com IA. O nome deve ser curto, fácil de memorizar, e transmitir criatividade e tecnologia. Me dê 10 sugestões de nomes disponíveis provavelmente no .com ou .com.br."</em></p>
$aula16$ WHERE title ILIKE '%o que é um domínio%' OR title ILIKE '%o que e um domínio%' OR title ILIKE '%domínio%' AND title NOT ILIKE '%conectar%';

-- ------------------------------------------------------------
-- MÓDULO 3 — Aula 6: Como publicar no ar com Vercel
-- Travessões em: "Vercel é gratuito — sem cartão", "Para atualizar: suba o arquivo — o link"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula17$
<p>Chegou o momento que todo criador espera: colocar seu projeto no ar para o mundo ver. Com o Vercel, isso leva menos de 2 minutos. Não precisa de cartão de crédito, não precisa de servidor, não precisa saber configurar nada técnico. Você arrasta o arquivo e o site vai pro ar. É isso.</p>

<p>O passo a passo completo: <strong>1)</strong> Tenha o arquivo HTML do site que a IA criou para você salvo no seu computador. <strong>2)</strong> Acesse vercel.com e crie uma conta gratuita (pode usar o Google). <strong>3)</strong> Na tela principal, clique em "Add New Project". <strong>4)</strong> Escolha a opção de fazer upload de uma pasta ou arquivo. <strong>5)</strong> Arraste seu arquivo HTML (ou pasta do projeto). <strong>6)</strong> Clique em Deploy. Em 30 segundos, você recebe um link como <em>seuprojeto.vercel.app</em> que funciona em qualquer dispositivo do mundo.</p>

<p>Esse link já funciona no celular. Já tem HTTPS (o cadeadinho de segurança). Já suporta qualquer quantidade de acessos. E se você quiser atualizar o site, é só fazer o upload de novo com o arquivo modificado.</p>

<ul>
  <li><strong>Vercel é gratuito:</strong> sem cartão de crédito, sem prazo.</li>
  <li><strong>Upload simples:</strong> arraste o arquivo e clique em Deploy.</li>
  <li><strong>Link automático:</strong> .vercel.app funciona imediatamente no celular e no computador.</li>
  <li><strong>Para atualizar:</strong> suba o arquivo modificado. O link continua o mesmo.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Preciso publicar uma landing page no Vercel. Me dê o passo a passo detalhado, incluindo como criar a conta, como fazer o upload de um arquivo HTML simples, e como compartilhar o link com um cliente. Explica como se eu nunca tivesse usado o Vercel antes."</em></p>
$aula17$ WHERE title ILIKE '%publicar no ar%' OR title ILIKE '%publicar com vercel%';

-- ------------------------------------------------------------
-- MÓDULO 3 — Aula 7: Como conectar um domínio ao site
-- Travessões em: "registros DNS — são como", "quando ficar verde — está funcionando",
-- "DNS = mapa de endereços da internet — é o que", "Propagação leva até 24h — é normal",
-- "O Vercel mostra o status — fique de olho"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula18$
<p>Você tem o site no ar em <em>seusite.vercel.app</em>. Você comprou o domínio <em>seusite.com.br</em>. Agora precisa conectar os dois, como atualizar o endereço nos Correios quando você muda de casa. Demora um tempo para todo mundo saber o endereço novo, mas depois que propaga, qualquer pessoa que digitar <em>seusite.com.br</em> chega direto no seu site.</p>

<p>O processo passo a passo: <strong>1)</strong> No Vercel, acesse seu projeto e clique em "Settings" (Configurações). <strong>2)</strong> Vá em "Domains" e clique em "Add". <strong>3)</strong> Digite seu domínio (ex: seusite.com.br) e clique em Add. <strong>4)</strong> O Vercel vai mostrar registros DNS (instruções de redirecionamento) que você precisa copiar. <strong>5)</strong> Acesse o painel do lugar onde comprou o domínio (ex: Registro.br), vá em "DNS" ou "Zona de DNS", e cole os registros que o Vercel forneceu. <strong>6)</strong> Aguarde entre 1 e 24 horas para a propagação acontecer.</p>

<p>Propagação DNS é o tempo que os servidores do mundo inteiro levam para atualizar o mapa de endereços da internet. É normal e não tem como acelerar. O Vercel mostra o status. Quando ficar verde, está funcionando.</p>

<ul>
  <li><strong>DNS = mapa de endereços da internet:</strong> é o que conecta o nome ao servidor.</li>
  <li><strong>Propagação leva até 24h:</strong> é normal, não é erro.</li>
  <li><strong>O Vercel mostra o status:</strong> fique de olho no painel.</li>
  <li><strong>Se travar:</strong> o suporte do seu registrador (Registro.br, Hostinger) ajuda.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Comprei o domínio meusite.com.br no Registro.br e estou hospedando no Vercel. Me dê o passo a passo detalhado de como configurar os registros DNS para conectar meu domínio ao Vercel, incluindo quais tipos de registros devo criar (A, CNAME, etc)."</em></p>
$aula18$ WHERE title ILIKE '%conectar um domínio%' OR title ILIKE '%conectar domínio%' OR title ILIKE '%conectar um dominio%';

-- ------------------------------------------------------------
-- MÓDULO 4 — Aula 1: O que é um dashboard e para que serve
-- Travessões em: "ele abre o holossistema — vê tudo", "pode ter um dashboard — e com IA",
-- "Isso tem valor imenso — e você vai"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula19$
<p>A sala de controle da Stark Industries é o símbolo perfeito de poder inteligente. Tony Stark não precisa ir até cada departamento para saber o que está acontecendo. Ele abre o holossistema e vê tudo em tempo real: status dos Iron Men, energia do reator, alertas de segurança, comunicações. Um <strong>dashboard</strong> é exatamente isso: o painel de controle com os números mais importantes para tomar decisões rápidas.</p>

<p>No mundo real, dashboards existem em todo lugar: o painel do carro (velocidade, combustível, temperatura), o aplicativo do banco (saldo, gastos por categoria), as métricas de um Instagram (alcance, seguidores, engajamento). Qualquer negócio que gera dados pode ter um dashboard. E com IA, você consegue criar um do zero em minutos.</p>

<p>Para um cliente que tem uma loja, um dashboard pode mostrar: vendas do dia, produtos mais vendidos, clientes novos, ticket médio, e comparação com o mês anterior. Tudo visível em uma única tela, sem precisar abrir planilha nenhuma. <strong>Isso tem valor imenso</strong> e você vai aprender a criar.</p>

<ul>
  <li><strong>Dashboard = painel de controle visual</strong> com os dados mais importantes.</li>
  <li><strong>Substitui planilhas confusas</strong> por informações visuais e rápidas.</li>
  <li><strong>Pode ser atualizado em tempo real</strong> com as tecnologias certas.</li>
  <li><strong>Você pode criar um para qualquer coisa:</strong> loja, redes sociais, finanças, jogos.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Preciso criar um dashboard HTML para uma pequena loja de roupas. Os dados serão fictícios por enquanto. Crie uma página com: total de vendas do mês, ticket médio, produtos mais vendidos em um gráfico de barras, e meta de vendas com indicador visual de progresso. Estilo moderno e escuro."</em></p>
$aula19$ WHERE title ILIKE '%o que é um dashboard%' OR title ILIKE '%o que e um dashboard%';

-- ------------------------------------------------------------
-- MÓDULO 4 — Aula 2: Tipos de dados que um painel pode mostrar
-- Travessões em: "Dashboards funcionam igual — cada tipo", "evolução no tempo — como as vendas",
-- "para comparações — quais produtos", "mostram proporções — quanto", "mostram detalhes — lista",
-- "é inútil — ninguém sabe"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula20$
<p>O Den Den Mushi do One Piece é incrível: dependendo do tipo de transmissão, você manda mensagem de texto, voz, imagem, ou até sinal de localização. Cada tipo de transmissão serve para um tipo de informação. Dashboards funcionam igual. <strong>Cada tipo de dado tem sua melhor forma de ser visualizado.</strong></p>

<p><strong>KPIs</strong> (números grandes em destaque) são para os indicadores mais importantes: total de vendas, número de clientes, receita do mês. <strong>Gráficos de linha</strong> mostram evolução no tempo, como as vendas cresceram semana a semana. <strong>Gráficos de barra</strong> são para comparações, como quais produtos vendem mais. <strong>Gráficos de pizza</strong> mostram proporções, como quanto cada categoria representa do total. <strong>Tabelas</strong> mostram detalhes, como a lista dos últimos pedidos com nome, valor e status.</p>

<p>A regra de ouro: menos é mais. Um dashboard com 20 métricas diferentes é inútil. Ninguém sabe onde olhar. O ideal é 3 a 5 métricas principais, cada uma respondendo uma decisão específica. Antes de criar, sempre pergunte: <em>"que decisão esse dado vai ajudar a tomar?"</em> Se não souber responder, o dado não precisa estar ali.</p>

<ul>
  <li><strong>KPIs:</strong> números grandes para os indicadores mais críticos do negócio.</li>
  <li><strong>Linha:</strong> evolução no tempo (crescimento, tendência).</li>
  <li><strong>Barra:</strong> comparações entre categorias.</li>
  <li><strong>Pizza:</strong> proporções do total.</li>
  <li><strong>Menos é mais:</strong> 3-5 métricas principais, cada uma com propósito claro.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Para cada tipo de visualização de dados (KPI, gráfico de linha, barra, pizza, tabela), me dê um exemplo prático de quando usar em um dashboard para uma academia de ginástica. Depois me recomende quais 5 métricas seriam mais importantes para o dono da academia monitorar diariamente."</em></p>
$aula20$ WHERE title ILIKE '%tipos de dados%' OR title ILIKE '%painel pode mostrar%';

-- ------------------------------------------------------------
-- MÓDULO 4 — Aula 3: Como pedir um painel à IA
-- Travessões em: "R$45.230 — KPI grande", "gráfico de barras horizontal",
-- "Especifique o tipo de cada gráfico — não deixe", "Peça responsivo — o dono",
-- "musculação, funcional, online (gráfico de pizza)"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula21$
<p>Agora você sabe o que é um dashboard e quais tipos de dados ele pode mostrar. Hora de fazer a IA construir um para você. Assim como o prompt de sites, o prompt de dashboard tem uma estrutura clara: o que o painel vai monitorar, quais métricas mostrar, qual tipo de gráfico para cada uma, se os dados são fictícios ou reais, e o estilo visual.</p>

<p>Um exemplo completo: <em>"Crie um dashboard HTML em arquivo único para uma loja fictícia de eletrônicos. Métricas para mostrar: 1) Total de vendas do mês (R$45.230, como KPI grande), 2) Produtos mais vendidos: iPhone, Samsung Galaxy, AirPods, Fone JBL (gráfico de barras horizontal), 3) Evolução de vendas dos últimos 7 dias (gráfico de linha), 4) Clientes novos este mês: 127 (KPI com comparação ao mês anterior de +12%), 5) Tabela com os 5 últimos pedidos (data, produto, valor, status). Estilo escuro moderno, acentos em azul elétrico. Responsivo para mobile."</em></p>

<p>O segredo de começar com dados fictícios: você valida se o visual está perfeito antes de conectar dados reais. Quando o cliente aprovar o layout, aí você pede à IA para conectar com os dados reais.</p>

<ul>
  <li><strong>Comece sempre com dados fictícios</strong> para validar o visual antes.</li>
  <li><strong>Especifique o tipo de cada gráfico:</strong> não deixe a IA decidir.</li>
  <li><strong>Peça responsivo:</strong> o dono do negócio vai querer ver no celular.</li>
  <li><strong>Inclua filtros de data</strong> se o cliente precisar comparar períodos.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Crie um dashboard HTML para um personal trainer com dados fictícios mostrando: número de alunos ativos (KPI), evolução de matrículas nos últimos 6 meses (gráfico de linha), distribuição de alunos por modalidade como musculação, funcional e online (gráfico de pizza), e lista dos últimos 5 pagamentos recebidos (tabela). Tema escuro, cores verde e branco."</em></p>
$aula21$ WHERE title ILIKE '%como pedir um painel%' OR title ILIKE '%painel à ia%';

-- ------------------------------------------------------------
-- MÓDULO 4 — Aula 4: O que é uma API?
-- Travessões em: "chegou até lá — a rede", "API = a torneira dos dados — você faz",
-- "Quase todo serviço digital tem API — Instagram", "Muitas APIs são gratuitas — especialmente"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula22$
<p>Pensa em uma torneira. Você gira e a água sai. Você não precisa saber como a água chegou até lá. A rede de encanamentos, o reservatório, a estação de tratamento. Você só usa a torneira. Uma <strong>API</strong> é a torneira dos dados: você faz uma pergunta ("qual é o preço do dólar hoje?") e os dados chegam. Quem construiu toda a estrutura por baixo é o serviço que criou a API.</p>

<p>Quase todo serviço digital tem uma API. O Instagram tem uma que libera seus dados de seguidores e posts. O Mercado Livre tem uma com todos os preços e produtos. O Banco Central tem uma com cotações de moedas. O Open Weather tem uma com dados climáticos do mundo inteiro. E a melhor parte: muitas dessas APIs são <strong>gratuitas</strong> e abertas ao público.</p>

<p>Você não precisa criar a API. Você só precisa saber que ela existe e pedir à IA para conectá-la ao seu projeto. <em>"Crie um dashboard que usa a API do Banco Central para mostrar o preço do dólar em tempo real."</em> A IA sabe o que fazer. Algumas APIs precisam de uma chave de acesso (como uma senha). A IA também te explica como conseguir.</p>

<ul>
  <li><strong>API = a torneira dos dados:</strong> você faz uma pergunta e os dados chegam.</li>
  <li><strong>Quase todo serviço digital tem API:</strong> Instagram, Mercado Livre, Banco Central.</li>
  <li><strong>Muitas APIs são gratuitas:</strong> especialmente as públicas do governo.</li>
  <li><strong>Algumas precisam de chave de acesso:</strong> é só cadastrar no site do serviço.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Me explique o que é uma API de forma simples, com um exemplo do dia a dia. Depois me dê uma lista de 5 APIs gratuitas e públicas que eu poderia usar em projetos reais, explicando o que cada uma fornece e como conseguir acesso."</em></p>
$aula22$ WHERE title ILIKE '%o que é uma api%' OR title ILIKE '%o que e uma api%';

-- ------------------------------------------------------------
-- MÓDULO 4 — Aula 5: Como usar dados reais no seu dashboard
-- Travessões em: "API pública, gratuita — a API do Banco Central",
-- "Comece com APIs gratuitas — Banco Central", "A IA conhece as principais — peça",
-- "Teste a API no navegador primeiro — cole"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula23$
<p>Você já sabe criar dashboards com dados fictícios. Agora é hora de conectar dados reais. E a melhor notícia: existe uma API pública, gratuita, sem necessidade de cadastro, que qualquer pessoa pode usar agora mesmo. É a <strong>API do Banco Central do Brasil</strong>. Com ela, você consegue pegar o preço do dólar, do euro, do real em tempo real. E a IA sabe exatamente como conectar essa API ao seu dashboard.</p>

<p>A estratégia para usar APIs em projetos: primeiro pesquise se existe uma API para os dados que precisa ("Instagram follower count API", "preço do dólar API", "clima em São Paulo API"). Depois peça à IA para criar o código de conexão. A IA conhece as principais APIs públicas e sabe como fazer as requisições. Por fim, teste a API separada antes de integrar ao dashboard: copie o link da API no navegador e veja se os dados chegam.</p>

<p>O prompt que você pode usar hoje mesmo para criar um dashboard com dados reais: <em>"Crie um dashboard HTML que busca o preço atual do dólar pela API do Banco Central do Brasil e mostra em tempo real, com um gráfico de variação dos últimos 30 dias. Sem necessidade de chave de API."</em></p>

<ul>
  <li><strong>Comece com APIs gratuitas e sem autenticação:</strong> Banco Central, Open Notify, etc.</li>
  <li><strong>A IA conhece as principais APIs públicas:</strong> peça a ela para integrar.</li>
  <li><strong>Teste a API no navegador primeiro:</strong> cole a URL e veja se os dados chegam.</li>
  <li><strong>Depois de validar o visual, substitua os dados fictícios pelos reais.</strong></li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Crie um dashboard HTML completo que usa a API pública do Banco Central do Brasil para mostrar: cotação atual do dólar e do euro em tempo real, variação do dólar nos últimos 30 dias em gráfico de linha, e um histórico dos últimos 10 dias em tabela. Sem precisar de chave de API. Tema escuro, acentos em verde."</em></p>
$aula23$ WHERE title ILIKE '%dados reais%' OR title ILIKE '%usar dados reais%';

-- ------------------------------------------------------------
-- MÓDULO 5 — Aula 1: Tipos de jogos que a IA cria bem
-- Travessões em: "Fruta do Diabo — Paramecia", "clicker games (estilo Cookie Clicker — você clica)",
-- "A melhor estratégia — clicker ou quiz", "Plataforma e snake: médio — possível",
-- "A IA cria em um único arquivo HTML — sem precisar"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula24$
<p>Cada Fruta do Diabo no Blox Fruits tem um tipo de poder diferente: Paramecia, Zoan, Logia. E cada uma domina em uma situação específica. Com jogos criados por IA é igual: existem <strong>tipos de jogos que a IA cria incrivelmente bem</strong> em um único arquivo HTML, e outros que são mais complexos. Saber a diferença é a primeira vantagem estratégica.</p>

<p>A IA cria facilmente em HTML/JavaScript: <strong>jogos de plataforma</strong> simples (estilo Mario), <strong>clicker games</strong> (estilo Cookie Clicker, onde você clica para ganhar pontos), <strong>quiz</strong> (perguntas e respostas com pontuação), <strong>jogos de memória</strong> (achar os pares), <strong>Snake</strong> (cobra clássica), <strong>Tetris</strong> simplificado, <strong>nave espacial</strong> (Asteroids-style). Todos em um único arquivo, rodando direto no navegador.</p>

<p>A melhor estratégia para começar: escolha um tipo simples, clicker ou quiz, para o seu primeiro projeto. O mecanismo é mais simples, o resultado é imediato e impressionante. Depois que você dominar isso, pode ir para plataformas e jogos com mais física.</p>

<ul>
  <li><strong>Clicker, quiz e memória:</strong> os mais fáceis de criar e mais rápidos de terminar.</li>
  <li><strong>Plataforma e snake:</strong> médio, possível em minutos com o prompt certo.</li>
  <li><strong>A IA cria em um único arquivo HTML:</strong> sem precisar instalar nada.</li>
  <li><strong>Comece simples:</strong> dominar o básico antes do avançado é sempre a melhor estratégia.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Crie um jogo clicker em HTML, CSS e JavaScript em um único arquivo. Mecânica: o jogador clica em uma esfera brilhante no centro da tela e ganha moedas. A cada 50 moedas, ele pode comprar um 'auto-clicker' que ganha moedas automaticamente. Visual moderno e dark, com animações de partículas ao clicar."</em></p>
$aula24$ WHERE title ILIKE '%tipos de jogos%' OR title ILIKE '%jogos que a ia%';

-- ------------------------------------------------------------
-- MÓDULO 5 — Aula 2: Como descrever mecânicas
-- Travessão em: "Estrutura: [objeto] + [ação] + [consequência] — para cada mecânica"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula25$
<p>A diferença entre um jogo medíocre e um jogo divertido está nas mecânicas. <strong>Mecânica</strong> é o que acontece quando o jogador faz alguma coisa. É a regra de causa e efeito: <em>[ação do jogador] resulta em [reação do jogo]</em>. E quanto mais detalhadamente você descreve as mecânicas para a IA, mais o jogo funciona como você imaginou.</p>

<p>A estrutura perfeita para descrever uma mecânica: <strong>[objeto] + [ação] + [consequência]</strong>. Exemplos: "Quando o personagem toca o espinho, ele perde 1 vida e volta ao checkpoint." "Quando o jogador coleta a moeda dourada, ela desaparece com uma animação de brilho e o placar aumenta em 10." "Quando o contador chega a zero, o jogo pausa e uma tela de 'Game Over' aparece com o placar final e botão de reiniciar." Cada mecânica descrita dessa forma é implementada com precisão pela IA.</p>

<p>Pense em todas as situações possíveis: o que acontece quando o jogador vence? Quando perde? Quando o tempo acaba? Quando completa uma fase? Quanto mais você antecipar, menos surpresas desagradáveis vai ter no resultado final.</p>

<ul>
  <li><strong>Estrutura: [objeto] + [ação] + [consequência]</strong> para cada mecânica.</li>
  <li><strong>Descreva todas as interações possíveis:</strong> vitória, derrota, tempo, power-ups.</li>
  <li><strong>Inclua animações e sons:</strong> "com efeito sonoro de moeda", "com animação de explosão".</li>
  <li><strong>Especifique as fases e progressão:</strong> como o jogo fica mais difícil ao longo do tempo.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Crie um jogo de nave espacial em HTML onde: a nave se move com as setas do teclado; ao pressionar espaço, a nave dispara um laser amarelo; quando o laser atinge um inimigo, o inimigo explode com animação de partículas e some, somando 10 pontos; quando um inimigo chega à borda inferior da tela, o jogador perde 1 de 3 vidas; ao perder as 3 vidas, aparece tela de Game Over com placar."</em></p>
$aula25$ WHERE title ILIKE '%mecânicas de jogo%' OR title ILIKE '%descrever mecânicas%' OR title ILIKE '%mecanicas de jogo%';

-- ------------------------------------------------------------
-- MÓDULO 5 — Aula 3: Como pedir sprites, sons e assets
-- Travessões em: "aparência única — a Fruta", "DALL-E (dentro do ChatGPT Plus — mais fácil)",
-- "Midjourney (pago — mas os resultados)", "Sons no Freesound.org — centenas"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula26$
<p>Todo personagem do Blox Fruits tem uma aparência única. A Fruta que comeu muda completamente o visual. Criar os sprites (imagens dos personagens e elementos) do seu jogo é onde a IA de imagens entra em campo. Você não precisa saber desenhar. Você precisa saber pedir.</p>

<p>Para criar imagens de jogos, as melhores ferramentas são: <strong>DALL-E</strong> (integrado ao GPT, mais fácil de usar), <strong>Leonardo.ai</strong> (gratuito e especializado em jogos), e <strong>Midjourney</strong> (pago, mas com resultados incríveis para assets de jogos). Para sons, use: <strong>ElevenLabs</strong> para vozes e narrações, <strong>Suno</strong> para músicas de fundo, e <strong>Freesound.org</strong> para efeitos sonoros gratuitos.</p>

<p>O segredo para pedir sprites de jogo: peça sempre com <strong>fundo transparente (PNG)</strong>, estilo consistente para todos os elementos, e tamanho específico. Um exemplo: <em>"Crie um sprite de nave espacial vista de cima, estilo pixel art retro, fundo transparente, 64x64 pixels, em tom azul metálico com brilho."</em></p>

<ul>
  <li><strong>Sempre peça PNG com fundo transparente</strong> para sprites de jogo.</li>
  <li><strong>Estilo consistente:</strong> defina o estilo (pixel art, cartoon, realista) e use para tudo.</li>
  <li><strong>Comece com emojis ou formas simples</strong> enquanto o visual não está finalizado.</li>
  <li><strong>Sons no Freesound.org:</strong> centenas de efeitos gratuitos para jogos.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Preciso criar sprites para um jogo de plataforma estilo pixel art. Me dê prompts detalhados para criar no Leonardo.ai: 1) personagem principal (herói), 2) inimigo básico, 3) moeda coletável, 4) plataforma/chão. Todos em estilo pixel art 16-bit, tons quentes, fundo transparente."</em></p>
$aula26$ WHERE title ILIKE '%sprites%' OR title ILIKE '%assets%' OR title ILIKE '%pedir sprites%';

-- ------------------------------------------------------------
-- MÓDULO 5 — Aula 4: Como hospedar um jogo simples no ar
-- Travessões em: "você vai disponibilizar seu jogo — E existem",
-- "Vercel — o mesmo que você", "arrastar o arquivo, deploy, link funcionando"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula27$
<p>Você criou um jogo incrível. Agora a melhor parte: publicar para que outras pessoas possam jogar. Assim como publicar sua Devil Fruit no mercado do Blox Fruits para outros jogadores experimentarem, você vai disponibilizar seu jogo no mundo real. E existem duas plataformas perfeitas para isso.</p>

<p>A primeira opção é o <strong>Vercel</strong>, o mesmo que você usa para sites. Se o jogo é um arquivo HTML único, sobe exatamente como site: arrasta o arquivo, clica em deploy, link funcionando. Ideal para compartilhar por WhatsApp. A segunda opção, e mais interessante para jogos, é o <strong>itch.io</strong>: uma plataforma específica para jogos indie, completamente gratuita, onde você pode criar uma página de jogo com screenshots, descrição, e até cobrar pelo acesso.</p>

<p>No itch.io: crie uma conta, vá em "Upload New Project", escolha "HTML" como tipo, faça upload do seu arquivo (pode ser um .zip com HTML + imagens), defina o preço (pode ser gratuito ou pago), e publique. Seu jogo fica em <em>seuuser.itch.io/seujogo</em>, um endereço profissional que você pode mostrar em portfólio.</p>

<ul>
  <li><strong>Vercel:</strong> para compartilhar rápido via link no WhatsApp.</li>
  <li><strong>itch.io:</strong> para jogos com página profissional, pode ser público ou privado.</li>
  <li><strong>itch.io aceita pagamento:</strong> você pode cobrar pelo jogo depois de pronto.</li>
  <li><strong>O link pode ser usado como portfólio:</strong> "olha o jogo que eu criei!"</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Me dê o passo a passo completo para publicar um jogo HTML no itch.io: como criar a conta, como fazer o upload do arquivo, como escrever uma boa descrição para o jogo, quais screenshots tirar, e como definir um preço. Explica como se fosse para um iniciante de 14 anos."</em></p>
$aula27$ WHERE title ILIKE '%hospedar um jogo%' OR title ILIKE '%publicar um jogo%';

-- ------------------------------------------------------------
-- MÓDULO 5 — Aula 5: Como fazer updates e melhorias no jogo
-- Travessões em: "Parabéns — isso já coloca", "Seja específico — 'quando pulo'",
-- "A IA não lembra — você sempre", "Peça um update de cada vez — não misture"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula28$
<p>O jogo está no ar. Parabéns. Isso já coloca você na frente de 99% das pessoas que só falam em criar mas nunca publicam. Agora começa a parte que separa bons produtos de produtos mediocres: <strong>iterar com base no feedback</strong>. Jogar o seu próprio jogo, anotar o que não funciona, e melhorar.</p>

<p>O fluxo profissional de updates: <strong>1)</strong> Jogue e anote tudo que não ficou legal. Seja específico. "Quando pulo no canto esquerdo, o personagem atravessa a parede" é muito melhor que "tem uns bugs". <strong>2)</strong> Abra o Claude (ou o Google Antigravity) e comece enviando o código completo do jogo junto com a descrição do bug. A IA não lembra do que criou antes. Você sempre precisa enviar o código atual. <strong>3)</strong> Descreva o bug com precisão. <strong>4)</strong> Peça um update de cada vez. Não misture 5 correções em um pedido só. A IA perde o fio. <strong>5)</strong> Teste a correção antes de pedir a próxima.</p>

<p>Lembre: um update de cada vez, código completo junto com o pedido, e teste antes de publicar. Esse fluxo vai te salvar de muitas dores de cabeça.</p>

<ul>
  <li><strong>Um update de cada vez:</strong> não misture várias correções no mesmo pedido.</li>
  <li><strong>Sempre passe o código atual:</strong> a IA não lembra do que criou antes.</li>
  <li><strong>Descreva o bug com precisão:</strong> "quando faço X acontece Y", não "tem um bug aqui".</li>
  <li><strong>Teste antes de publicar</strong> a nova versão para não quebrar o que estava funcionando.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"[Cole o código completo do jogo aqui] Encontrei 2 bugs: 1) Quando o personagem pula e encosta na borda direita da tela, ele fica preso e não consegue se mover. 2) O placar some quando a tela de Game Over aparece. Corrija apenas esses dois problemas, sem alterar mais nada no código."</em></p>
$aula28$ WHERE title ILIKE '%updates e melhorias%' OR title ILIKE '%fazer updates%';

-- ------------------------------------------------------------
-- MÓDULO 6 — Aula 1: O que é um sistema
-- Travessões em: "tem uma tela onde você vê — (interface)",
-- "Interface (frontend) é o que o usuário vê e clica — formulários",
-- "Banco de dados é onde — clientes", "Lógica (backend) é o que acontece — quando",
-- "Interface: o que o usuário vê — telas"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula29$
<p>O sistema de recompensas do Blox Fruits é uma obra de engenharia: tem uma <strong>tela</strong> onde você vê seus itens e missões (interface), um <strong>banco de dados</strong> que sabe quem tem qual fruta e quantas moedas (dados), e uma <strong>lógica</strong> que calcula "se matar X inimigos, ganha Y beli" (regras). Todo sistema digital do mundo funciona com esses três componentes. E você vai aprender a criá-los com IA.</p>

<p><strong>Interface</strong> (também chamada de frontend) é o que o usuário vê e clica: formulários, botões, listas, telas. <strong>Banco de dados</strong> é onde as informações ficam guardadas: clientes, pedidos, produtos, histórico. <strong>Lógica</strong> (também chamada de backend) é o que acontece por baixo dos panos. Quando o usuário clica em "comprar", a lógica verifica o estoque, deduz o saldo, envia a confirmação.</p>

<p>Exemplos de sistemas que você pode criar: sistema de cadastro de clientes para uma barbearia, sistema de agendamento online, controle de estoque de uma loja, sistema de avaliação de alunos. Cada um tem interface + banco de dados + lógica. Com IA, você descreve o que o sistema deve fazer e ela monta os três.</p>

<ul>
  <li><strong>Interface:</strong> o que o usuário vê (telas, botões, formulários).</li>
  <li><strong>Banco de dados:</strong> onde as informações ficam guardadas.</li>
  <li><strong>Lógica:</strong> as regras que definem o que acontece quando o usuário age.</li>
  <li><strong>Você descreve, a IA monta:</strong> não precisa conhecer o código por dentro.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Explique o que é um sistema digital usando como exemplo um sistema de agendamento de barbearia. Descreva como a interface, o banco de dados e a lógica funcionam em conjunto nesse sistema, de forma simples para um iniciante entender."</em></p>
$aula29$ WHERE title ILIKE '%o que é um sistema%' OR title ILIKE '%o que e um sistema%';

-- ------------------------------------------------------------
-- MÓDULO 6 — Aula 2: O que é um banco de dados?
-- Travessões em: "banco de dados funciona exatamente assim — guarda",
-- "As tabelas se conectam — o pedido", "você não precisa instalar nada — use o Supabase",
-- "Banco de dados = baú organizado — tabelas"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula30$
<p>O baú do Minecraft é perfeito para guardar tudo organizado: inchaços de madeira na primeira fileira, pedras na segunda, minérios raros no fundo. Você abre e acha na hora que precisar. Um <strong>banco de dados</strong> funciona exatamente assim. Guarda informações de forma organizada em tabelas, e você encontra qualquer dado na hora que precisar.</p>

<p>Cada tabela no banco de dados é como uma planilha especializada. Uma tabela de clientes tem colunas: nome, email, telefone, data de cadastro. Uma tabela de pedidos tem: qual cliente pediu, o que pediu, quando, e quanto pagou. As tabelas se conectam. O pedido sabe qual cliente é porque guarda o ID do cliente. Isso se chama <strong>banco de dados relacional</strong>.</p>

<p>Para os seus projetos com IA, você não precisa instalar nada. Use o <strong>Supabase</strong>. É gratuito, fácil, e tem uma interface visual onde você vê e edita os dados como uma planilha. Você descreve para a IA o que precisa salvar, ela cria as tabelas, e o Supabase guarda tudo. Os dados ficam salvos permanentemente, diferente de uma variável no código que some quando o site fecha.</p>

<ul>
  <li><strong>Banco de dados = baú organizado:</strong> tabelas com informações estruturadas.</li>
  <li><strong>Supabase é gratuito</strong> e funciona como banco de dados na nuvem.</li>
  <li><strong>Tabelas se conectam:</strong> pedidos sabem qual cliente, produtos sabem qual categoria.</li>
  <li><strong>Dados persistentes:</strong> ficam salvos mesmo depois que o site fecha.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Preciso criar um banco de dados para um sistema de agendamento de barbearia. Me dê a estrutura completa das tabelas que vou precisar: quais tabelas, quais colunas em cada uma, quais tipos de dado (texto, número, data), e como as tabelas se conectam entre si."</em></p>
$aula30$ WHERE title ILIKE '%o que é um banco de dados%' OR title ILIKE '%banco de dados%' AND title NOT ILIKE '%backend%';

-- ------------------------------------------------------------
-- MÓDULO 6 — Aula 3: O que é um backend?
-- Travessões em: "frontend — o que o usuário vê", "backend — o que processa",
-- "O usuário nunca vê isso — ele só vê", "Frontend = o que o usuário vê — telas",
-- "Backend = o que processa por baixo — verificações", "Supabase = backend pronto — você não"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula31$
<p>Em qualquer restaurante bom, existe uma parte que os clientes veem (o salão, o cardápio, o garçom) e uma parte que os clientes não veem (a cozinha, onde o chef prepara tudo). O salão é o <strong>frontend</strong>: o que o usuário vê e interage. A cozinha é o <strong>backend</strong>: o que processa as informações por baixo dos panos. Sem a cozinha, o salão não entrega nada.</p>

<p>No backend é onde acontecem as coisas importantes: verificar se o login está correto, calcular o valor total do pedido, salvar os dados no banco de dados, enviar o e-mail de confirmação. O usuário nunca vê isso. Ele só vê o resultado ("seu pedido foi confirmado!"). O backend é o coração invisível de qualquer sistema.</p>

<p>Para seus projetos iniciais, você não precisa construir um backend do zero. O <strong>Supabase</strong> já é um backend completo e gratuito: tem banco de dados, sistema de autenticação (login), e até funções que rodam no servidor. Você descreve o que o sistema precisa fazer, a IA cria o código do frontend, e o Supabase cuida do backend. É a combinação perfeita para começar.</p>

<ul>
  <li><strong>Frontend = o que o usuário vê:</strong> telas, botões, formulários.</li>
  <li><strong>Backend = o que processa por baixo:</strong> verificações, cálculos, banco de dados.</li>
  <li><strong>Supabase = backend pronto e gratuito:</strong> você não precisa criar do zero.</li>
  <li><strong>Descreva o que o sistema faz</strong> e a IA monta os dois lados.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Quero criar um sistema de cadastro de clientes para uma barbearia usando Supabase como backend e HTML/JavaScript no frontend. Me explique como o Supabase funciona nesse contexto e me dê o código completo para: formulário de cadastro, botão de salvar no Supabase, e lista dos clientes cadastrados."</em></p>
$aula31$ WHERE title ILIKE '%o que é um backend%' OR title ILIKE '%o que e um backend%';

-- ------------------------------------------------------------
-- MÓDULO 6 — Aula 4: Como descrever um sistema para a IA
-- Travessões em: "Tony Stark não constrói — ele sabe",
-- "ela vai inventar o que falta — e o que ela inventar"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula32$
<p>Criar um sistema com IA é como dar um briefing completo para o Homem de Ferro. Tony Stark não constrói uma armadura sem especificações. Ele sabe o objetivo, as restrições, os materiais, as funcionalidades. Quanto mais completo o briefing, mais próxima do ideal a armadura sai. Com sistemas é igual: um prompt incompleto gera um sistema que você vai ter que reescrever do zero.</p>

<p>O prompt completo para sistema tem seis partes: <strong>1) O que o sistema faz</strong> (agendamento de barbearia), <strong>2) Quem vai usar</strong> (clientes e o dono), <strong>3) O que cada usuário pode fazer</strong> (cliente agenda, dono vê e confirma), <strong>4) O que o sistema salva</strong> (nome, data, horário, serviço, telefone), <strong>5) Regras de negócio</strong> (não pode agendar mesmo horário duas vezes, confirmação por WhatsApp), <strong>6) Tecnologia</strong> (Supabase + HTML/JavaScript).</p>

<p>Com esses seis elementos, a IA entende exatamente o que construir. Sem eles, ela vai inventar o que falta. E o que ela inventar provavelmente não é o que você quer.</p>

<ul>
  <li><strong>O que o sistema faz:</strong> resumo em uma frase do propósito principal.</li>
  <li><strong>Quem usa e o que cada um pode fazer:</strong> todos os perfis de usuário.</li>
  <li><strong>O que salvar:</strong> lista de todos os dados que precisam ficar no banco.</li>
  <li><strong>Regras de negócio:</strong> as lógicas específicas do negócio (ex: sem conflito de horário).</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Crie um sistema completo de agendamento para uma barbearia usando Supabase e HTML/JavaScript. O sistema tem dois perfis: cliente (agenda um horário escolhendo serviço, data e barbeiro) e dono (vê todos os agendamentos, pode confirmar ou cancelar). Dados a salvar: nome do cliente, telefone, serviço (corte R$30, barba R$20, combo R$45), barbeiro, data e horário. Regra: não pode ter dois agendamentos no mesmo horário com o mesmo barbeiro."</em></p>
$aula32$ WHERE title ILIKE '%descrever um sistema%' OR title ILIKE '%sistema para a ia%';

-- ------------------------------------------------------------
-- MÓDULO 6 — Aula 5: O que é autenticação?
-- Travessões em: "Isso é autenticação — o sistema",
-- "email + senha (a mais tradicional — você cadastra)",
-- "Login com Google (você usa sua conta Google — sem precisar)",
-- "magic link (você coloca seu email — recebe um link)",
-- "Supabase Auth já tem tudo pronto — e ela conecta"
-- "Supabase Auth: solução pronta — nunca guarde"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula33$
<p>Antes de cada chamada no Den Den Mushi, o sistema verifica quem está ligando. Alguns snails bloqueiam chamadas não autorizadas. Isso é autenticação. O sistema confirma <strong>quem você é</strong> antes de te deixar entrar. Em sistemas digitais, autenticação é o sistema de login: você prova que é você, e o sistema te dá acesso.</p>

<p>As formas mais comuns de autenticação: <strong>email + senha</strong> (a mais tradicional, você cadastra seu email e cria uma senha), <strong>Login com Google</strong> (você usa sua conta Google, sem precisar lembrar mais uma senha), e <strong>magic link</strong> (você coloca seu email e recebe um link especial que te loga automaticamente, sem senha). Cada uma tem seu contexto ideal.</p>

<p>Para seus projetos, você não precisa construir o sistema de login do zero. Isso seria complexo e perigoso (senhas armazenadas errado é um desastre de segurança). O <strong>Supabase Auth</strong> já tem tudo pronto: email e senha, login com Google, magic link. Você só precisa pedir à IA: <em>"adicione sistema de login com email e senha usando Supabase Auth"</em> e ela conecta tudo.</p>

<ul>
  <li><strong>Autenticação = quem é você:</strong> o sistema de login que verifica identidade.</li>
  <li><strong>Email + senha:</strong> mais tradicional, para a maioria dos sistemas.</li>
  <li><strong>Login com Google:</strong> mais fácil para o usuário, menos senhas para lembrar.</li>
  <li><strong>Supabase Auth:</strong> solução pronta e gratuita. Nunca guarde senhas em texto puro.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Adicione sistema de autenticação com email e senha ao meu projeto usando Supabase Auth. Preciso de: tela de login, tela de cadastro, logout, e que certas páginas só sejam acessíveis para usuários logados. Mostre o código completo de cada parte."</em></p>
$aula33$ WHERE title ILIKE '%autenticação%' OR title ILIKE '%autenticacao%' OR title ILIKE '%o que é autenticação%';

-- ------------------------------------------------------------
-- MÓDULO 7 — Aula 1: Como planejar um projeto do zero
-- Travessões em: "a operação mais complexa — centenas", "Existia um plano — E é",
-- "briefing em mãos — seu prompt", "o briefing vai para o prompt"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula34$
<p>A invasão de Marineford pelo Barba Branca foi a operação mais complexa da história do One Piece. Centenas de piratas, múltiplas fases, timing preciso. Barba Branca não chegou de barco e saiu brigando com todo mundo. Existia um plano. E é exatamente isso que separa projetos profissionais de projetos amadores: <strong>o planejamento antes da execução</strong>.</p>

<p>Antes de abrir o Claude e pedir o site, você precisa de um briefing. O briefing responde: <em>Quem é o cliente e o que ele faz? Quem é o público? O que o projeto deve alcançar? Quais páginas ou telas são necessárias? Qual o prazo? Qual o estilo visual?</em> Com o briefing em mãos, seu prompt vai ser 10x mais poderoso. E você vai ter 10x menos retrabalho.</p>

<p>Dica prática: quando for falar com um cliente, leve um caderno ou abra o Notes. Anote tudo que ele disser. Peça para ele te mandar prints de sites que ele gosta. Tire foto de materiais que ele já tem (cartão de visita, logo, cor). Esses materiais vão para o briefing. E o briefing vai para o prompt.</p>

<ul>
  <li><strong>Briefing primeiro, execução depois:</strong> 30 minutos de planejamento evita 3 horas de retrabalho.</li>
  <li><strong>Anote tudo que o cliente fala:</strong> detalhes que parecem pequenos importam.</li>
  <li><strong>Peça referências visuais:</strong> sites que ele gosta, cores que prefere.</li>
  <li><strong>Defina prazo e escopo:</strong> o que está incluso no preço e o que é extra.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Vou fazer minha primeira reunião com um cliente para criar um site. Me dê uma lista completa de perguntas para um briefing profissional que devo fazer antes de começar qualquer projeto. Organize por categorias: negócio, público, design, funcionalidade, prazo e pagamento."</em></p>
$aula34$ WHERE title ILIKE '%planejar um projeto%' OR title ILIKE '%projeto do zero%';

-- ------------------------------------------------------------
-- MÓDULO 7 — Aula 2: Como apresentar para um cliente
-- Travessões em: "Ele não só fala — ele cria", "E a apresentação pode salvar",
-- "Nunca mostre abrindo rápido no celular — prepare", "Apresente em chamada — nunca mande",
-- "Nunca diga é provisório — apresente", "Apresente ao vivo: chamada — não só o link"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula35$
<p>No One Piece, quando Usopp conta uma história, ele sabe como narrar para o efeito máximo. Ele não só fala. Ele cria a experiência. Apresentar um projeto para um cliente é exatamente isso: não é só mostrar o site, é <strong>criar a experiência de ver o resultado</strong>. E a apresentação pode salvar ou matar um projeto ótimo.</p>

<p>Regras de ouro da apresentação profissional: <strong>1)</strong> Nunca mostre "abrindo rápido no celular". Prepare o link antes, teste em todos os dispositivos. <strong>2)</strong> Apresente em chamada de vídeo ou presencialmente. Nunca mande só o link por WhatsApp como entrega final. <strong>3)</strong> Antes de mostrar, explique o que cada parte faz: "aqui está a seção hero, projetada para prender a atenção em 5 segundos." <strong>4)</strong> Nunca diga "é provisório". Apresente tudo como definitivo. Isso muda completamente como o cliente avalia.</p>

<p>Como lidar com "não gostei": sempre pergunte <em>"o que especificamente não te agradou?"</em> Feedbacks vagos como "não ficou bom" são inimigos. Você precisa de "a cor parece muito clara" ou "o texto do botão está informal demais". Com feedback específico, você resolve em minutos.</p>

<ul>
  <li><strong>Prepare antes:</strong> link funcionando, testado em desktop e celular.</li>
  <li><strong>Apresente ao vivo:</strong> chamada de vídeo ou presencialmente, não só o link.</li>
  <li><strong>Explique antes de mostrar:</strong> contextualize cada seção antes de navegar.</li>
  <li><strong>Pergunte feedback específico:</strong> "o que exatamente não agradou?"</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Me ajude a preparar uma apresentação profissional de uma landing page para um cliente. Me dê: um roteiro de apresentação de 10 minutos, as principais perguntas para guiar o feedback, e como responder de forma profissional caso o cliente diga que não gostou de algo."</em></p>
$aula35$ WHERE title ILIKE '%apresentar para um cliente%' OR title ILIKE '%apresentar para o cliente%';

-- ------------------------------------------------------------
-- MÓDULO 7 — Aula 3: Como precificar seu trabalho como criador com IA
-- Travessões em: "o preço reflete o valor entregue — não o esforço",
-- "Máximo de 2 rodadas de revisão no preço — da terceira"
-- "Máximo 2 rodadas de revisão no preço acordado — após isso, cobra"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula36$
<p>Zoro pagou caro pelos treinos antes de poder cobrar caro pelas missões. Quando ele aceita um trabalho, o preço reflete o valor entregue. Não o esforço em horas, mas o problema que ele resolve. <strong>Você não vende código. Você vende solução e tempo economizado para o cliente.</strong> Essa mudança de perspectiva muda completamente como você precifica.</p>

<p>Tabela de referência para iniciantes: <strong>Landing page simples</strong> (1 página, sem sistema): R$200 a R$500. <strong>Site completo</strong> (3-5 páginas, sem sistema): R$500 a R$1.500. <strong>Sistema simples</strong> (cadastro, agendamento, com banco de dados): R$1.000 a R$3.000. Como calcular: quanto tempo você levou × valor da sua hora. Para iniciante: R$30 a R$50 por hora. Para quem já tem portfólio: R$80 a R$150.</p>

<p>Regras de negócio essenciais: <strong>1)</strong> Nunca dê preço na hora. Diga "deixa eu analisar o projeto e te passo o valor amanhã." <strong>2)</strong> Coloque no contrato o que está incluso. <strong>3)</strong> Máximo de 2 rodadas de revisão no preço. Da terceira em diante, cobra. <strong>4)</strong> "Revisões ilimitadas" é prejuízo garantido. Nunca aceite.</p>

<ul>
  <li><strong>Você vende solução, não código:</strong> o preço deve refletir o valor entregue.</li>
  <li><strong>Nunca dê preço imediato:</strong> peça tempo para analisar o projeto.</li>
  <li><strong>Documente o escopo:</strong> o que está incluso e o que é extra.</li>
  <li><strong>Máximo 2 rodadas de revisão</strong> no preço acordado. Após isso, cobra.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Um cliente me pediu para criar um site completo para a padaria dele: 4 páginas (home, cardápio, sobre, contato), com galeria de fotos e formulário de encomenda. Me ajude a: estimar as horas necessárias para criar isso com IA, calcular o preço justo para um iniciante, e escrever uma proposta comercial profissional."</em></p>
$aula36$ WHERE title ILIKE '%precificar%' OR title ILIKE '%como precificar%';

-- ------------------------------------------------------------
-- MÓDULO 7 — Aula 4: Como entregar e passar o projeto ao cliente
-- Travessões em: "Link do site funcionando — teste", "Manual simples de atualização — como",
-- "Credenciais de acesso — email", "Código-fonte — o arquivo",
-- "Clientes voltam — às vezes depois", "Guarde os arquivos por 1 ano — clientes voltam"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula37$
<p>Uma entrega profissional não é só mandar o link. É como o Chopper encerrando um tratamento: o paciente recebe o diagnóstico documentado, as instruções de cuidado, os remédios, e o número para ligar em caso de emergência. Você vai entregar o site, mais tudo que o cliente precisa para continuar sem você.</p>

<p>A entrega profissional completa tem quatro itens: <strong>1) Link do site funcionando</strong> (teste uma última vez antes de entregar). <strong>2) Manual simples de atualização</strong> (como o cliente pode trocar uma foto, mudar um texto, atualizar um preço). Pode ser um vídeo curto gravado na tela (use o Loom, gratuito). <strong>3) Credenciais de acesso</strong> (email e senha do Vercel, do Supabase, do domínio). Anote tudo num documento e entregue. <strong>4) Código-fonte</strong> (o arquivo HTML original, se o cliente pedir).</p>

<p>Guarde uma cópia de tudo por pelo menos 1 ano. Clientes voltam, às vezes depois de 6 meses, querendo uma atualização. Se você não tem os arquivos, vai ter que refazer do zero. E documente onde cada coisa está hospedada, onde o domínio foi comprado, e quando vence o plano.</p>

<ul>
  <li><strong>Entregue o link, o manual, as credenciais e o código-fonte.</strong></li>
  <li><strong>Grave um vídeo curto</strong> mostrando como o cliente atualiza o site.</li>
  <li><strong>Guarde os arquivos por 1 ano:</strong> clientes voltam.</li>
  <li><strong>Peça feedback em vídeo ou texto:</strong> serve como depoimento de portfólio.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Crie um template de documento de entrega de projeto de site para eu enviar ao cliente. Deve incluir: link do site, instruções básicas de como atualizar o conteúdo, credenciais de acesso (com espaços para preencher), contato para suporte, e termos de garantia pós-entrega."</em></p>
$aula37$ WHERE title ILIKE '%entregar e passar%' OR title ILIKE '%entregar o projeto%' OR title ILIKE '%como entregar%';

-- ------------------------------------------------------------
-- MÓDULO 7 — Aula 5: Como lidar com revisões do cliente
-- Travessões em: "O Chopper não desiste — mas também", "Elas não são fracasso — são o processo",
-- "Isso precisa estar claro no início — na proposta",
-- "Anota para mim tudo — pode ser por WhatsApp",
-- "Documente por escrito: WhatsApp conta — salva o histórico"
-- ------------------------------------------------------------
UPDATE lessons SET content = $aula38$
<p>O Chopper não desiste do paciente na primeira complicação. Mas também não faz cirurgia extra de graça. Revisões fazem parte de qualquer projeto criativo. Elas não são fracasso nem crítica pessoal. São o processo normal de ajuste entre o que o cliente imaginou e o que foi entregue. O segredo é <strong>gerenciar as revisões de forma profissional</strong>.</p>

<p>A regra das 2 rodadas: no preço que você passou, estão incluídas 2 rodadas de revisão. Da terceira em diante, você cobra um valor adicional. Isso precisa estar claro no início, na proposta ou no contrato. Não é desonestidade, é profissionalismo. Revisões infinitas deixam qualquer projeto sem fim e te fazem ganhar menos que o salário mínimo por hora.</p>

<p>Como receber feedback de forma eficiente: quando o cliente disser que quer mudanças, responda: <em>"Anota para mim tudo que você gostaria de ajustar. Pode ser por WhatsApp mesmo."</em> Colete todas as mudanças de uma vez, antes de começar a executar qualquer uma. Isso evita o ciclo de "corrige isso... ah, e também aquilo... ah, e mais uma coisa" que pode durar semanas.</p>

<ul>
  <li><strong>2 rodadas de revisão no preço:</strong> deixe isso claro antes de começar.</li>
  <li><strong>Colete todas as mudanças de uma vez</strong> antes de executar qualquer uma.</li>
  <li><strong>Documente por escrito:</strong> WhatsApp conta. Salva o histórico.</li>
  <li><strong>Avise antes da terceira rodada</strong> que haverá custo adicional.</li>
</ul>

<p><strong>Exemplo de prompt que você pode usar:</strong><br>
<em>"Meu cliente me mandou as seguintes revisões para o site: [lista as revisões]. Me ajude a: 1) classificar quais são simples (menos de 15 min) e quais são complexas (mais de 1 hora), 2) estimar o tempo total de revisão, e 3) redigir uma mensagem profissional para o cliente confirmando as alterações e informando que a terceira rodada terá custo adicional."</em></p>
$aula38$ WHERE title ILIKE '%revisões do cliente%' OR title ILIKE '%revisoes do cliente%' OR title ILIKE '%lidar com revisões%';

-- ============================================================
-- FIM — update_texts2.sql
-- Aulas alteradas: todas as 33 aulas com campo content definido
-- (5 do Módulo 1, 6 do Módulo 2, 7 do Módulo 3, 5 do Módulo 4,
--  5 do Módulo 5, 5 do Módulo 6, 5 do Módulo 7)
-- ============================================================
