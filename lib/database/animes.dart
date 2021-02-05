import 'dart:math';

import 'package:anny_app/database/_dataModels.dart';
import 'package:flutter/material.dart';

List<Anime> genAnimeList(Random randomizer) {
  var output = new List<Anime>();

  output = [
    Anime(
      title: "Neon Genesis Evangelion",
      comments: "É um anime que muitos julgam como muito complexo, mas talvez sua complexidade seja superestimada. Ele toca diversos pontos da personalidade humana, tem alguns tons religiosos e diversos conflitos interpessoais. Tem umas luta de robô gigante massa, alguns ângulos de anime, e é um anime sobre o qual eu amaria conversar contigo.",
      synopsis: "Neon Genesis Evangelion é uma série de ação pós-apocalíptica que gira em torno de uma organização paramilitar chamada NERV, criada para combater seres monstruosos chamados Anjos, utilizando seres gigantes chamados Unidades Evangelion (ou EVAs). Estes seres são controlados por adolescentes, que por um mero acaso nasceram no ano do Segundo Impacto, sendo um deles o personagem principal, Shinji Ikari. Com outros adolescentes que foram treinados para pilotar os EVAs (por serem compatíveis com os mesmos) e com a ajuda dos membros da NERV, eles tentam derrotar os Anjos e evitar o Terceiro Impacto, que levaria a destruição da humanidade.",
      cover: new AssetImage('assets/anime/evangelion.jpg')
    ),
    Anime(
      title: "Fullmetal Alchemist: Brotherhood",
      comments: "Tem algumas lutas incríveis, personagens cheios de personalidade, uma história que se desenvolve como uma bola de neve, e diversos momentos podem ser interpretados de múltiplas maneiras. Os momentos dramáticos são de partir o coração, então mesmo que seja longo, 100% vale a pena.",
      synopsis: "\"Para se obter algo, outra coisa de mesmo valor deve ser perdida.\"",
      cover: new AssetImage('assets/anime/fullmetal.jpg')
    ),
    Anime(
      title: "Sakasama no Patema",
      comments: "É um romance diferente, com algumas reviravoltas no roteiro surpreendentes. Um filme muito bem feito, carinho é perceptível em cada detalhe.",
      synopsis: "Em um mundo subterrâneo, onde tuneis se estendem por todos os lugares, os habitantes vivem no escuro e em espaços confinados. Patema ama explorar os tuneis e descobrir novas coisas. A \"zona de perigo\", na qual os cidadãos da sua vila não são permitidos ir, sempre foi o centro da curiosidade da Patema. Em uma de suas aventuras a essa área proibida, Patema se depara com um ser estranho e acaba caindo em outro mundo. Já se imaginaram sem um ponto de apoio no qual ficar em pé?",
      cover: new AssetImage('assets/anime/patema.jpg')
    ),
    Anime(
      title: "Koe no Katachi",
      comments: "Chorei, tá bom? Chorei.",
      synopsis: "A história de Koe no Katachi gira em torno de Shōko Nishimiya, uma estudante do primário que sofre de surdez. Ela é transferida para uma nova escola, mas acaba sendo intimidada por seus colegas. Shouya Ishida, um dos valentões responsáveis acaba forçando-a para mudar de escola. Como resultado dos atos contra Shōko, as autoridades escolares tomam medidas sobre o assunto, Shouya é condenado ao ostracismo como punição, sem amigos para falar e não ter planos para o futuro.",
      cover: new AssetImage('assets/anime/koeNoKatachi.jpg')
    ),
    Anime(
      title: "ReLIFE",
      comments: "É uma redação sobre a vida. Vai te fazer refletir sobre o que é viver, sobre suas escolhas, e colocar uma nova perspectiva sobre cada decisão.",
      synopsis: "ReLife conta a história de um cara de 27 anos desempregado, que tem dificuldade de conseguir um emprego devido a uma experiencia traumática em seu primeiro estágio. Ele acaba recebendo a proposta de entrar em um experimento, que através de um comprimido que rejuvenesce a pessoa permite a ele voltar para o colégio por 1 ano para testes do projeto.",
      cover: new AssetImage('assets/anime/reLife.jpg')
    ),
    Anime(
      title: "Yakusoku no Neverland",
      comments: "É um anime sobre mistério e drama, uma abordagem belíssima sobre empatia, amizade, frustração, confiança. Abrange tantos tópicos do psicológico humano que deveria ser um pecado não ver.",
      synopsis: "Ela é amada como uma mãe, mas não é uma mãe de verdade. E as crianças que vivem juntas também não são irmãos de verdade. Emma, Norman e Ray vivem felizes em um remoto orfanato, porém, esses alegres dias estão prestes a acabar...",
      cover: new AssetImage('assets/anime/thePromised.jpg')
    ),
    Anime(
      title: "Ansatsu Kyoushitsu",
      comments: "Possui algum drama, comédia, e uma história bastante bizarra. É muito engraçado, possui os famosos ângulos de anime, e as complexidades sutis dos personagens dão vida à obra. Você vai se pegar adorando alguns personagens que no começo não esperava gostar.",
      synopsis: "A turma dos rejeitados da Escola Kunugigaoka, a Turma “E”, é apresentada a uma figura bem estranha, um alienígena em forma de polvo, que a partir de então, será seu o novo professor! Para piorar, esse alienígena foi o responsável por destruir 70% da lua e pretende fazer o mesmo com o planeta Terra no próximo mês de março, mas antes, ele irá treinar todos os alunos da Turma “E” para uma missão bem peculiar: ensiná-los a assassiná-lo.",
      cover: new AssetImage('assets/anime/ansatsu.jpg')
    ),
    Anime(
      title: "Gabriel DropOut",
      comments: "É um anime de comédia, não é feito pra levar a sério. As personagens são muito carismáticas e tem personalidades marcantes, fazendo cenas do cotidiano se tornarem obras do humor.",
      synopsis: "A comédia desenrola-se em torno de Gabriel White, que se formou no topo da classe na escola de anjos e que frequenta uma escola humana na terra em busca de conhecimento, mas, um jogo web atrai toda a sua atenção e acaba decidindo que dá muito trabalho ir para outros lugares.",
      cover: new AssetImage('assets/anime/gabriel.jpg')
    ),
    Anime(
      title: "Tsurezure Children",
      comments: "É um anime sobre relacionamentos. Diversos casais diferentes, uns mais fofos que os outros, você acaba torcendo por todos ao mesmo tempo. Não é excepcional, mas é bem fofo, e mal dá pra ver o tempo passando, tudo acontece num ritmo muito bom. É muito gostosinho de assistir.",
      synopsis: "São basicamente, vários casais se formando em uma escola. Cada casal tem um garoto e uma garota com personalidade diferente, que reagem juntos de forma diferente e cada relacionamento tem seu próprio ritmo. É focado nos acontecimentos diários entre eles e nas confissões e como se desenrolam.",
      cover: new AssetImage('assets/anime/tsurezure.jpg')
    ),
    Anime(
      title: "Koi to Uso",
      comments: "É um drama que questiona quanto a tecnologia pode avançar. Sobre relacionamentos, sobre saber expressar os próprios sentimentos. Tem uns ângulos de anime também, mas só mais um ponto positivo né?",
      synopsis: "No futuro, quando os jovens do Japão completam 16 anos, o governo escolhe um parceiro para eles casarem. As pessoas não precisam se dar o trabalho de procurar alguém, e todos aceitam que o país encontre um parceiro compatível para torná-los felizes. Yukari Nejima tem 15 anos de idade. Ele está abaixo da média tanto academicamente quanto atleticamente, mas esconde um coração ardendo de paixão! Neste mundo em que escolher seu parceiro é proibido, o que acontecerá com aqueles que se apaixonam por uma pessoa que não é a mesma selecionada pelo governo?",
      cover: new AssetImage('assets/anime/koiToUso.jpg')
    ),
    Anime(
      title: "Himouto! Umaru-chan",
      comments: "Um anime de comédia. Não tem muita complexidade ou coisas extremamente profundas pra analisar, mas é muito gostoso de assistir.",
      synopsis: "Comédia de uma garota que é um modelo exemplar de aluna na escola, perfeita nos estudos e nos esportes, mas quando chega em casa se transforma em uma otaku, para o desespero do seu irmão trabalhador, que tem que sustentar seus vícios.",
      cover: new AssetImage('assets/anime/himouto.jpg')
    ),
    Anime(
      title: "Shimoneta",
      comments: "É um anime de comédia, dos que você não assiste na sala, mas também levanta um questionamento válido sobre diversos assuntos essenciais pra sociedade. Vale totalmente o tempo investido.",
      synopsis: "A história se passa 16 anos após a \"Lei da Ordem Pública e Moral no Modo da Educação Saudável\" proibir linguagem grosseira no país. Tanukichi Okuma se matricula em uma das escolas de elite disciplinar, que zela pela moral pública, mas devido a uma chantagem logo é obrigado por Ayame Kajou a ser membro da Organização da Linguagem Obscena (SOX). Tanukichi acaba participando de atos obscenos de terrorismo contra a presidente do conselho estudantil, a talentosa Anna (por quem Tanukichi tem uma queda).",
      cover: new AssetImage('assets/anime/shimoneta.png')
    ),
    Anime(
      title: "Masamune-kun no Revenge",
      comments: "Tem algumas cenas de comédia, um pouco de romance, algum drama, e reviravoltas inesperadas. Não é big brain anime, mas vale o tempo assistindo.",
      synopsis: "Masamune-Kun no Revenge gira em torno de Makabe Masamune, um aluno colegial que acabou de voltar a sua cidade natal onde viveu quando era criança com apenas um objetivo em mente, se vingar da garota da garota que o havia feito passar vergonha no passado quando eram crianças e recusando sua confissão de amor.",
      cover: new AssetImage('assets/anime/masamune.jpg')
    ),
    Anime(
      title: "Juuni Taisen",
      comments: "É bem diferente de todos os outros que eu recomendei. Um \"battle royale\" com os 12 mercenários mais perigosos do mundo. Todos batalhando pelo direito de realizar um desejo ilimitado. São lutas empolgantes e reviravoltas divertidas de tentar prever. Também possui alguns questionamentos incríveis.",
      synopsis: "A cada 12 anos, mercenários que possuam grande força bruta, astúcia e uma precisão mortal juntam-se para participar no Torneio do Zodíaco. Onde cada guerreiro tem o nome e atributo de um dos 12 animais do Zodíaco Chinês. Com o seu orgulho e vidas em risco, eles envolvem-se num combate vicioso até que apenas o vencedor permaneça.",
      cover: new AssetImage('assets/anime/juuni.jpg')
    ),
    Anime(
      title: "Kiseijuu: Sei no Kakuritsu",
      comments: "É um drama sci-fi, com altos e baixos, momentos de muita tensão, momentos de romance. É divertido de se assistir, e pode ser analisado profundamente.",
      synopsis: "A história de Parasyte, ou Kiseijuu, se passa em um mundo em que seres extraterrestres invadem a Terra. Eles se apoderam dos humanos entrando pelas cavidades corporais, com a finalidade de controlar o corpo da vítima. A história se desenvolve quando um extraterrestre chamado Migi falha em se apoderar do corpo de  Shinichi Izumi, fazendo com que os dois sejam obrigados a conviver juntos.",
      cover: new AssetImage('assets/anime/kiseijuu.jpg')
    ),
    Anime(
      title: "Violet Evergarden",
      comments: "É lindo. A arte é linda. A música é linda. A protagonista é linda. É um colírio pra alma assistir.",
      synopsis: "Há palavras que Violet ouviu no campo de batalha que ela não consegue esquecer. Essas palavras lhe foram ditas por alguém que ela gosta muito, mais do que qualquer outra pessoa no mundo… Mas Violet ainda não entende o significado delas. Violet Evergarden, uma jovem conhecida como uma arma, deixou o campo de batalha ao término da guerra para começar uma nova vida em um Correio de Serviço Postal. Lá, ela é profundamente impressionada pelo trabalho das Auto Memories Dolls (Bonecas de Memórias Automatizadas, referência para o início da profissão, quando apenas autômatas do tamanho de bonecas redigiam as cartas), mulheres que assimilam os pensamentos das pessoas e os convertem em palavras. Violet começa sua jornada como uma Memorie Doll e se depara por diversas vezes com as emoções múltiplas de diferentes pessoas e diferentes formas de amor. E todo esse tempo procurando apenas uma coisa: o significado daquelas palavras que ouviu de alguém que ela gosta muito.",
      cover: new AssetImage('assets/anime/violet.jpg')
    ),
    Anime(
      title: "Clannad",
      comments: "É muito fofo. Não vou falar muita coisa, porque quero te pegar surpresa nesse aqui.",
      synopsis: "Tomoya Okazaki é um aluno do terceiro ano ressentido com sua vida. Sua mãe faleceu em um acidente de carro quando ele era mais novo, fazendo seu pai cair no vício do jogo e álcool. Várias brigas com seu pai fizeram que ele se afastasse de seu pai. Na escola ele conhece uma garota estranha chamada Nagisa Furukawa que é um ano mais velha que ele, e quase sempre está doente. Ele tornam-se amigos e pouco a pouco sente que sua vida está mudando de direção. Ao decorrer do anime, novos personagens aparecem e cada um dele ostenta um segredo que aos poucos vão sendo solucionados.",
      cover: new AssetImage('assets/anime/clannad.jpeg')
    ),
    Anime(
      title: "Ao Haru Ride",
      comments: "É um anime de romance adolescente. Vai ter outros parecidos aqui, é gostosinho de assistir, sem uma reflexão absurda que vai quebrar sua visão da realidade.",
      synopsis: "Yoshioka Futaba tem algumas razões pelas quais ela quer “reiniciar” sua imagem e vida como estudante de colegial. Porque ela é fofa, ela foi isolada pelas amigas no Fundamental, e por causa de um mal-entendido, ela não conseguiu ter os sentimentos correspondidos pelo único garoto que ela sempre gostou, Tanaka-kun. Agora no Colegial, ela está determinada a ser o mais “relaxada” possível para que suas amigas não fiquem com ciúmes dela. Satisfeita ao viver sua vida dessa maneira, ela reencontra o Tanaka-kun, mas agora ele está sob o nome de Mabuchi Kou. Ele fala pra ela que sentia o mesmo por ela quando eles eram mais jovens, mas que agora as coisas podem nunca mais serem as mesmas. Futaba será capaz de continuar seu amor, que nem nunca começou há três anos atrás?",
      cover: new AssetImage('assets/anime/haru.jpg')
    ),
    Anime(
      title: "Angel Beats",
      comments: "Esse é um dos poucos animes da lista que eu não assisti, mas ouvi muita coisa sobre, parece ser muito bom. ",
      synopsis: "Angel Beats ocorre em uma escola de “vida após a morte”, em algum lugar entre o Céu e a Terra, onde os alunos aprendem a abandonar todas as tristezas e arrependimentos que vieram a acontecer em suas vidas, antes de reencarnar em uma nova vida, desaparecendo deste mundo. Quando é provocado uma ferida ou qualquer outra causa de morte, os alunos ainda podem sentir dor e qualquer outra sensação, de quando eles estavam vivos, inclusive o de morrer, mas depois de um tempo eles acordam sem nenhum ferimento.",
      cover: new AssetImage('assets/anime/angelBeats.jpg')
    ),
    Anime(
      title: "Plastic Memories",
      comments: "Esse é outro anime que eu ainda não assisti mas coloquei nas recomendações. Parece ser bom, e falam muito bem dele.",
      synopsis: "Esta história se passa no futuro, quando androides que parecem exatamente como os seres humanos começam a ser produzidos. A empresa de produção de androides SA Corp. produziu Giftia, um novo tipo de androide que tem a maior quantidade de emoção e qualidades semelhantes aos humanos fora de qualquer outro modelo já visto. No entanto, devido a problemas na tecnologia, os androides possuem uma vida útil e devem ser desligados. Por esta razão, SA Corp. cria um serviço de terminal, a fim de recuperar os Giftia que passaram do seu tempo de vida útil. Um novo funcionário a serviço do terminal chamado Tsukasa Mizugaki forma uma equipe com a Giftia Isla para recuperar os androides.",
      cover: new AssetImage('assets/anime/plasticMemories.jpg')
    ),
    Anime(
      title: "Beastars",
      comments: "Vou ser crucificado por esse aqui, mas nem ligo. Ainda não assisti o anime. Talvez a escolha de arte não te agrade no começo, mas pelo que eu li sobre, é genial. Já li o manga. É ótimo, incrível. Levanta muitos pensamentos interessantes, questionamentos, os personagens principais tem muita personalidade, e a obra inteira é muito viva.",
      synopsis: "Beastars se passa em um mundo onde animais antropomórficos, herbívoros e carnívoros convivem uns com os outros. O protagonista da história é Legoshi, um lobo que faz parte do clube de drama do colégio Cherryton. Apesar da sua aparência ameaçadora, ele é dono de um coração gentil, e com o passar do tempo acabou se acostumando com o fato de outros animais lhe temerem. Certo dia, ele começa a se envolver mais com seus colegas de classe mais próximos e vê sua vida dentro do colégio mudar aos poucos.",
      cover: new AssetImage('assets/anime/beastars.jpeg')
    ),
    Anime(
      title: "Danganronpa",
      comments: "É um anime sobre drama e mistério, baseado na VN, que tenho todos os jogos. É muito divertido ver as reviravoltas, e tentar solucionar os mistérios antes dos personagens. Falando deles, são todos muito diferentes uns dos outros, cheios de personalidade. É apaixonante.",
      synopsis: "Existe um colégio lendário no Japão, em que só os estudantes mais talentosos são admitidos. Todo aluno que se consegue se matricular recebe um título único, que espelha suas habilidades e traços. Dos quinze candidatos aprovados para este peculiar colégio esse ano, Makoto Naegi é um individuo completamente ordinário, que foi aceito por pura sorte, e recebeu o título \"Super High School-Level Luck\".",
      cover: new AssetImage('assets/anime/danganronpa.jpg')
    ),
    Anime(
      title: "K-On",
      comments: "Mais um colírio dos animes. Não tem uma arte excepcional, mas é muuuuito fofinhoooo.",
      synopsis: "A historia de K-On!  Se desenvolve ao redor de quatro garotas, estudantes do ensino médio, que entram no clube de musica leve para tentar salvá-lo de ser suspenso.Entretanto, elas são apenas membros do clube, e nenhuma delas tem tanta experiência em tocar instrumentos ou ler partituras.",
      cover: new AssetImage('assets/anime/kOn.png')
    ),
    Anime(
      title: "Kaichou wa Maid-sama!",
      comments: "Romance adolescente. Não me julgue.",
      synopsis: "Ayuzawa Misaki é a presidente do conselho estudantil da escola Seika, uma escola antes masculina e que agora é mista. Ou seja, quase todos são garotos. E para proteger as garotas, ela briga com os garotos todos os dias. Por outro lado, ela secretamente trabalha num Café. O que acontecerá quando o garoto mais popular da escola, Usui Takumi, descobrir esse segredo?",
      cover: new AssetImage('assets/anime/maid.jpg')
    ),
    Anime(
      title: "Kokoro Connect",
      comments: "Esse é outro dos que eu ainda não vi, mas que falam muito bem. Como os outros que não vi, quero ver com você, se você tiver interesse.",
      synopsis: "A história gira em torno dos integrantes de um clube de estudos culturais (Yaegashi Taichi, Nagase Iori, Himeko Inaba, Yoshifumi Aoki, Kiriyama Yui) que viviam suas vidas normalmente até que de repente suas almas começam a trocar de corpo aleatoriamente. No início, os cinco estudantes se divertem em meio à confusão, mas esta situação também expõe as cicatrizes dolorosas escondidas dentro de seus corações. As relações entre os cinco alunos começam a mudar e tomam um rumo bem diferente.",
      cover: new AssetImage('assets/anime/kokoro.jpg')
    ),
    Anime(
      title: "Kotoura-san",
      comments: "É um slice-of-life com habilidades paranormais, um pouco de comédia nunca faz mal, né?",
      synopsis: "O anime conta a história de Kotoura Haruka, uma garota com a habilidade indesejada de ler mentes.Poder esse que tem causado muitas dificuldades para ela desde que era jovem e levou-a a distanciar-se das pessoas. Mas quando ela se transfere para a Escola Secundária de Midorigaoka e conhece o Manabe Yoshihisa, ela começa novamente a abrir gradualmente seu coração, apesar do fato da mente do Yoshihisa estar cheia de pensamentos pervertidos!",
      cover: new AssetImage('assets/anime/kotoura.jpg')
    ),
    Anime(
      title: "Lovely★Complex",
      comments: "Romance adolescente mais uma vez. Para de me julgar, eu gosto mesmo.",
      synopsis: "Lovely Complex é uma história que se passa entre um garoto e uma garota. A garota, Risa Koizumi, tem 1,72 de altura – sendo um “pouco” alta para a idade; e o garoto, Atsushi Otani, que tem 1,56 de altura –também é um “pouco” baixo para a sua idade. Por causa disso, e também por serem engraçados juntos, eles são conhecidos na escola como “All Hanshin Kyojin” (comediantes japoneses com alturas diferentes).",
      cover: new AssetImage('assets/anime/lovelyComplex.jpg')
    ),
    Anime(
      title: "Tonari no Kaibutsu-kun",
      comments: "Comédia romântica adolescente outra vez. Já estou sentindo você me julgar djsaoifjas",
      synopsis: "Mizutani Shizuku é o tipo de pessoa super estudiosa que só se importa com suas notas. Mas quando ela vai entregar anotações escolares para Yoshida Haru, acidentalmente ele se convence de que os dois são amigos. Haru tem uma personalidade muito inocente e esquisita.",
      cover: new AssetImage('assets/anime/tonariNoKaibutsu.jpg')
    ),
    Anime(
      title: "Sen to Chihiro no Kamikakushi",
      comments: "Lembro de ter visto quando era menor, mas já não lembro de quase nenhum detalhe. Anyways, com certeza é bom.",
      synopsis: "Chihiro é uma garota de 10 anos que acredita que todo o universo deve atender aos seus caprichos. Após saber através de seus pais que estarão mudando de cidade ela fica furiosa, sem fazer nenhum esforço para esconder sua raiva. Em meio a lembranças de seus amigos que terá que deixar, Chihiro percebe que seu pai se perdeu no caminho para a nova cidade onde irão morar, indo parar em um túnel aparentemente sem fim que é guardado por uma estranha estátua.",
      cover: new AssetImage('assets/anime/chihiro.jpg')
    ),
    Anime(
      title: "Mahoutsukai no Yome",
      comments: "Esse anime é lindo. Em todos os sentidos da palavra.",
      synopsis: "Chise Hattori, 15 anos. Órfã solitária, desesperançosa e sem meios para sobreviver. Em troca de uma fortuna, a jovem que não possui nada é comprada por uma criatura não-humana que convive com a eternidade e se diz mago. Quando a entidade a acolhe em sua casa como “discípula” e “noiva’’, o tempo congelado da garota começa a se mexer devagarinho… e ela está prestes a começar uma nova e estranha vida, repleta de magia, fadas e outros seres de natureza mágica.",
      cover: new AssetImage('assets/anime/magusBride.jpg')
    ),
  ];

  output.shuffle(randomizer);
  return output;
}