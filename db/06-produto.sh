#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD;
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \connect $APP_DB_NAME $APP_DB_USER
  BEGIN;
    CREATE TABLE public.produto (
      id integer NOT NULL,
      name character varying NOT NULL,
      fabricante character varying NOT NULL,
      imagem character varying NOT NULL,
      descricao character varying NOT NULL,
      preco integer NOT NULL,
      deleted_at timestamp without time zone,
      created_at timestamp without time zone DEFAULT now() NOT NULL,
      updated_at timestamp without time zone DEFAULT now() NOT NULL
    );
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (1,'Acuvue Oasys com Hydraclear Plus','Acuvue Oasys','lentes-de-contato-acuvue-oasys-com-hydraclear-plus-56916.jpg','Acuvue Oasys® com Hydraclear® Plus
     
    Conforto, praticidade e nitidez para todos os momentos e com o mais alto índice de proteção UV disponível em uma lente de contato, esta é a lente de contato Acuvue Oasys® com Hydraclear® Plus!
     
    As lentes Acuvue Oasys® foram pensadas para pessoas que utilizam aparelhos digitais a maior parte do tempo. Quando fazemos uso destes aparelhos tendemos a piscar menos do que o ideal, causando maior ressecamento dos olhos, assim como em ambientes com ar condicionado. Como solução para este problema, as lentes Acuvue Oasys® contam com a tecnologia Hydraclear® Plus, que mantém a hidratação dos olhos retendo a umidade na superfície da lente ao longo do dia, diminuindo a sensação de olhos secos e cansados. 
     
    As lentes Acuvue Oasys® com Hydraclear® Plus proporcionam muito mais conforto e qualidade de visão.
     

     
    Principais Características da Acuvue Oasys® com Hydraclear® Plus:
     
    ✔ Tecnologia Hydraclear® Plus, componente umectante que incorpora a lágrima e mantém os olhos hidratados e confortáveis durante todo o uso;
    ✔ A marca mais confortável para 7 em cada 10 usuários de lentes de contato;   
    ✔ Bordas infinitas que oferecem maior conforto e adaptação;
    ✔ Proteção UVA e UVB contra os raios ultravioleta;
    ✔ Insuperável em conforto, mesmo em estudos patrocinados por outros fabricantes.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo de até 15 dias, recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',199.00),
      (2,'Acuvue Oasys com Hydraclear Plus para Astigmatismo','Acuvue Oasys','lentes-de-contato-acuvue-oasys-para-astigmatismo-56972.jpg','Lentes Acuvue Oasys® com Hydraclear® Plus para Astigmatismo
     
    As lentes Acuvue Oasys® com Hydraclear® Plus para Astigmatismo proporcionam muito mais conforto e qualidade de visão, para usuários com necessidade de correção do astigmatismo associado ou não à miopia ou hipermetropia.
     
    Conforto, praticidade e nitidez para todos os momentos e com o mais alto índice de proteção UV disponível em uma lente de contato, esta é a lente de contato Acuvue Oasys® com Hydraclear® Plus para Astigmatismo! 
     
    As lentes Acuvue Oasys® foram pensadas para pessoas que utilizam aparelhos digitais a maior parte do tempo. Quando fazemos uso destes aparelhos tendemos a piscar menos do que o ideal, causando maior ressecamento dos olhos, assim como em ambientes com ar condicionado. Como solução para este problema, as lentes Acuvue Oasys® contam com a tecnologia Hydraclear® Plus, que mantém a hidratação dos olhos retendo a umidade na superfície da lente ao longo do dia, diminuindo a sensação de olhos secos e cansados.
     
     

     
    Principais Características da Acuvue Oasys® com Hydraclear® Plus:
     
    ✔ Tecnologia Hydraclear® Plus, componente umectante que incorpora a lágrima e mantém os olhos hidratados e confortáveis durante todo o uso;
    ✔ A marca mais confortável para 7 em cada 10 usuários de lentes de contato;   
    ✔ Corrige o astigmatismo com tecnologias que tornam o uso de lentes muito mais confortáveis;
    ✔ Proteção UVA e UVB contra os raios ultravioleta;
    ✔ Insuperável em conforto, mesmo em estudos patrocinados por outros fabricantes.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',247.00),
      (3,'SofLens Toric','SofLens','lentes-de-contato-soflens-toric-56951.jpg','Lentes de contato Soflens Toric
     
    Quem tem astigmatismo sabe como é importante se adaptar às lentes de contato para ter uma vida mais prática e com qualidade de visão. Por isso, as lentes de contato Soflens Toric, fabricadas pela renomada Bausch &amp; Lomb, são projetadas para ajudar as pessoas com astigmatismo a desfrutar de uma visão cristalina com um alto nível de conforto.
     
    Essas lentes gelatinosas de uso mensal, são projetadas para se encaixar com segurança em seus olhos, mesmo nos casos mais graves de astigmatismo e garantir estabilidade da visão até para quem não costuma se adaptar às lentes de contato. Devido ao design patenteado Lo-Torque, que redireciona a luz para um único ponto, as lentes se mantêm estáveis durante todo tempo, garantindo uma visão clara.
     
    As lentes Soflens Toric são feitas com Alphafilcon A e água, o que as faz reter melhor a umidade e manter seus olhos confortáveis durante todo o dia. Sua superfície foi especialmente projetada para repelir sujeira e depósitos de proteína, além de permitir a chegada de oxigênio aos olhos, evitando irritação.
     
    Para conhecer as outras opções de lentes Soflens, clique aqui.
     
     
     

     
     
    Benefícios da Lente de Contato Soflens Toric
     
    ✔ Ideal para usuários que não se adaptam ao silicone hidrogel;
    ✔ Lentes estáveis, garantindo visão nítida ao longo do dia
    ✔ Superfície projetada para repelir depósitos e permitir chegada de oxigênio
    ✔ Feito de Alphafilcon A flexível para um ajuste perfeito
    ✔ Olhos saudáveis e com boa aparência durante todo dia
     
    Indicação
     
    Para pessoas com Miopia ou Hipermetropia associada ao Astigmatismo.Uso: Diário / Prolongado de 1 a 7 dias*;Descarte: Mensal (uso diário) / 15 dias (uso prolongado*);Apresentação: 6 lentes de contato acondicionadas em blisteres individuais e inseridas em cartuchos selados.*É imprescindível consulta oftalmológica para saber qual a melhor indicação no seu caso.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo de até 15 dias, recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Saiba mais sobre Lentes de Contato Bausch + Lomb
    Tradição que inspira liberdade. Confira aqui',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',199.00),
      (4,'Biofinity','Biofinity ','lentes-de-contato-biofinity-56924.jpg','Lentes de contato Biofinity
     
    As lentes de contato Biofinity são lentes gelatinosas de alta qualidade que possibilitam conforto diferenciado para quem precisa fazer uso prolongado. Se você tem miopia ou hipermetropia e, precisa corrigir a sua visão e busca lentes de contato com uma opção que dure desde o início da manhã até o fim noite, esta lente é perfeita!
     
    Fabricadas pelas CooperVision, estas lentes de contato de silicone hidrogel têm a superfície lisa, naturalmente respirável e úmida o que a torna resistente à depósitos e, por isso, promovem a saúde dos olhos, mantendo a visão sempre nítida.
     
    Graças a tecnologia patenteada Aquaform, as lentes de contato Biofinity são mais confortáveis por permitir que o nível ideal de oxigênio chegue até seus olhos, mantendo a lubrificação durante todo o tempo de uso.
     
    As lentes Biofinity também estão disponíveis para correção de Astigmatismo, se este é o seu caso, clique aqui.
     
     

     
    Benefícios da Lente de Contato Biofinity
     
    ✔ Tecnologia Aquaform que permite que a quantidade certa de oxigênio chegue aos seus olhos
    ✔ Superfície lisa e respirável que mantém a visão limpa o dia todo
    ✔ Naturalmente umectadas, sem necessidade de uso de gotas lubrificantes
    ✔ Substituição mensal
    ✔ Ideais para uso prolongado
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Assista Sobre As Lentes De Contato Biofinity
     
     

     
    Saiba mais sobre Lentes de Contato CooperVision
    Uma empresa que enxerga longe para você enxergar bem. Confira aqui.
     
    Dicas para quem usa lentes de contato
     
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',202.90),
      (18,'Biosoft Tórica HD','Biosoft','biosoft-hd-torica.jpg','Lentes de Contato Biosoft Tórica HD:
     
    A lente de contato Biosoft Tórica HD fornece conforto insuperável e de alta duração, devido a sua tecnologia AQUAGRIP™.
     
    Essa tecnologia utiliza as propriedades de ligação da água para aumentar a sua resistência à desidratação e melhorar a umectação na superfície da lente. 
    Assim, conferindo as melhores propriedades hidrofílicas para o material da lente
     
    São lentes feitas para corrigir astigmatismo, garantindo a estabilidade das lentes nos olhos com precisão e conforto.
     
     

     
    Benefícios da lente Biosoft Tórica HD:
     
    ✔ Micro-precisão para uma adaptação fácil e maior conforto durante o uso;
    ✔  Naturalmente umectadas dispensando uso de gotas lubrificantes;
    ✔ Confortáveis durante todo o uso, garantindo olhos mais saudáveis;
    ✔ Proteção UVA e UVB
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',142.00),
      (5,'Acuvue Oasys 1-Day com HydraLuxe','Acuvue Oasys','acuvue-oasys-1-day-com-hydraluxe.jpg','Acuvue Oasys® 1-Day com HydraLuxe™
     
    Acuvue Oasys® 1-Day com HydraLuxe™, as lentes que oferecem conforto imbatível a usuários de aparelhos digitais com a praticidade do descarte diário.
     
    A lente Acuvue Oasys® 1-Day com HydraLuxe™ foi pensada para pessoas que utilizam aparelhos digitais e ficam longos períodos expostas às telas de computador, celular e tablet ou que passam parte de seu dia em ambientes secos, sofrendo com o desgaste e o cansaço visual. As lentes incorporam as propriedades da lágrima ao material, proporcionando conforto para você realizar suas atividades tranquilamente.
     
    Além disso, a tecnologia exclusiva HydraLuxe™ oferece maior qualidade de visão e mais fácil manuseio das lentes.
     
    As lentes Acuvue Oasys® 1-Day com HydraLuxe™ são de descarte diário e contam com o mais alto índice de proteção à raios ultravioleta disponíveis em uma lente de contato, resultando em ainda mais segurança e conforto para os seus olhos.
     
     
     

     
    Principais Características da Acuvue Oasys® 1-Day com HydraLuxe™:
     
    ✔ Conforto imbatível para usuários de aparelhos digitais ou em contato constante com ar condicionado ou ambientes secos;
    ✔ Tecnologia HydraLuxe™ que oferece maior conforto, qualidade visual e fácil manuseio;
    ✔ O mais alto nível de proteção UV disponível em uma lente de contato;
    ✔ Praticidade do descarte diário - você tem uma lente nova todos os dias.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',182.90),
      (6,'SofLens 59','SofLens','lentes-de-contato-soflens-59-comfort-56915.jpg','Lentes de contato Soflens59
     
    As lentes de contato Soflens 59, fabricadas pela pioneira da indústria ótica Bausch &amp; Lomb, são lentes de descarte mensal e ideais para quem leva uma vida agitada. São ótimas opções para quem nunca utilizou lentes de contato por serem fáceis de manusear.
     
    Feitas de Halifilcon B, material não iônico, resistente ao acúmulo de proteínas na superfície, estas lentes garantem garante uma sensação de frescor e visão nítida, combinando excelente desempenho, conforto e acuidade visual
     
    A Soflens 59 também é feita com 59% de água, o que as torna ideais para quem tem olhos secos, já que elas são capazes de reter a umidade para manter a hidratação dos olhos ao longo de todo o dia. Além disto, é esta hidratação que evita irritações, mesmo naqueles dias em que exageremos na exposição às telas
     
     

     
    Benefícios da lente de contato Soflens 59
     
    ✔ Excelente conforto proporcionado pelo desenho da borda;
    ✔ Tecnologia UnifitTM que proporciona uma adaptação rápida e simplificada (parâmetro de adaptação único);
    ✔ Custo mais acessível;
    ✔ Resistência ao acúmulo de proteínas (material não iônico);
    ✔ Com tinta de visibilidade para facilitar o manuseio da lente.
    ✔ Alto teor de umidade para olhos hidratados e sem irritação
    ✔ Uso confortável, mesmo durante tarefas que podem causar estreitamento dos olhos
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',132.90),
      (7,'Biofinity Toric','Biofinity ','lentes-de-contato-biofinity-toric-57127.jpg','Lentes de contato Biofinity Toric
     
    Se você tem astigmatismo sabe como é chato ter a visão distorcida ao olhar objetos tanto de perto quanto longe. Por isto, a CooperVision — líder mundial em tecnologia para lentes de contato — desenvolveu as lentes de contato Biofinity Toric. Estas lentes premium contam com Optimized Lens Geometry, design exclusivo que é feito especialmente para corrigir astigmatismo, garantindo a estabilidade das lentes nos olhos com precisão e conforto.
     
    A Biofinity Toric é ideal para quem sofre com olhos secos ou passa muitas horas em ambientes sem umidade ou com ar condicionado, já que possui a tecnologia Aquaform que permite a entrada de grande quantidade de oxigênio no olho, evitando irritação e mantendo o conforto.
     
    Fabricadas em silicone hidrogel, esta lente gelatinosa mensal é naturalmente úmida, dispensando o uso de gotas lubrificantes e oferecendo mais saúde para os olhos, e visão clara e nítida durante todo o período de uso. Além disso, possui superfície suave com bordas arredondadas que diminui o atrito da lente com a pálpebra, aumentando o conforto.
     
     

     
    Benefícios da lente contato Biofinity Toric
     
    ✔ Tecnologia Aquaform® que acalma olhos secos e desconfortáveis
    ✔ Optimized Lens Geometry otimizado para astigmatismo que oferece conforto premium
    ✔ Naturalmente umectadas dispensando uso de gotas lubrificantes
    ✔ Confortáveis durante todo o uso, garantindo olhos mais saudáveis
     
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',282.99),
      (8,'Air Optix Plus HydraGlyde','Air Optix','lentes-de-contato-air-optix-plus-hydraglyde-65391.jpg','Lentes de contato Air Optix plus HydraGlyde®&nbsp;Fabricadas pela Alcon, as lentes de contato Air Optix plus HydraGlyde® são lentes mensais que utilizam tecnologia avançada para um uso extremamente confortável.Sendo uma ótima opção para míopes (dificuldade de enxergar de longe) e hipermétropes (dificuldade de enxergar de perto), essas lentes são adequadas para quem sofre com secura ocular e até aqueles que precisam das lentes para praticar esportes, mantendo a superfície hidratada ao longo de todo dia graças a Matriz de Umidade HydraGlyde® que ajuda a superfície da lente a reter água usando uma camada fina e protetora de umidadeAs lentes de contato Air Optix plus HydraGlyde® ainda contam com a exclusiva tecnologia SmartShield® da Alcon, que cria uma camada protetora capaz de resistir aos depósitos de lipídios, resíduos de cosméticos e cremes, além de trazer conforto duradouro e hidratação mais prolongada, minimizando o ressecamento exposto na superfície da lente. O resultado é uma visão clara e confortável e olhos livres de irritações o dia todo.Feito de Lotrafilcon B supermacio, as lentes Air Optix plus HydraGlyde® oferecem estabilidade durante o uso, proporcionando visão perfeita sempre.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Benefícios das lentes Air Optix plus HygraGlyde®&nbsp;?&nbsp;Conta com tecnologias exclusivas Alcon para visão perfeita?&nbsp;SmartShield® que evita o acúmulo de depósitos?&nbsp;HydraGlyde® Moisture Matrix que retém mais água para maior conforto?&nbsp;Ideal para quem tem olhos secos?&nbsp;Melhor desempenho na umidificação&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;Indicação&nbsp;Lentes de descarte mensalAtende até -12 graus de miopia e -8 graus de hipermetropiaConsulte sempre seu oftalmologista para receber a indicação da melhor lente de contato para o seu caso.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',199.00),
      (119,'Natural Vision Fantasy','Natural Vision','lentes-de-contato-fantasy.jpg','Lentes de contato Natural Vision Fantasy:&nbsp;As lentes de contato Natural Vision Fantasy estão disponíveis em quatro cores e são para uso estético.&nbsp;Foram criadas para dar um toque especial na sua fantasia de halloween ou até mesmo para aqueles o público dos cosplays.&nbsp;Benefícios das lentes Natural Vision Fantasy:&nbsp;Lentes coloridas com aspecto natural;Melhor custo benefício com descarte anual;Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',117.90);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (9,'Acuvue 2','Acuvue 2','lentes-de-contato-acuvue-2-56971.jpg','Lentes de Contato Acuvue® 2   Com as lentes de contato Acuvue® 2 você não precisa gastar mais para ter uma visão nítida e de qualidade!   As lentes Acuvue® 2 contam com o design de borda infinita, que ajudam a reduzir o atrito entre a lente e a pálpebra, tornando seu uso muito mais confortável e natural.    Elas são mais fáceis de manusear, facilitando o ato de colocá-las e tirá-las e tornando sua adaptação muito mais ágil e agradável. O material das lentes Acuvue® 2 permitem que 88% do oxigênio alcance os olhos, o que significa muito mais conforto durante todo o dia.   Leveza, facilidade no manuseio e sensação de estar sem lentes de contato - é assim que você se sente usando a Acuvue® 2.           Principais Características da Acuvue® 2:   ✔ Visão nítida; ✔ Design de borda infinita que contorna os olhos e oferece uma sensação mais leve e natural; ✔ Ótima oxigenação: permite que 88% do oxigênio chegue aos olhos; ✔ Bordas infinitas que oferecem maior conforto e adaptação; ✔ Proteção UV: bloqueiam aproximadamente 82% das radiações UVA e 97% dos raios UVB.      Como Cuidar destas Lentes de Contato:   - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',155.90),
      (10,'1-Day Acuvue Moist','Acuvue Moist','lentes-de-contato-1-day-acuvue-moist.jpg','Lentes de Contato 1-Day Acuvue Moist® com Lacreon®
     
    Ideal para olhos secos e sensíveis e com a praticidade do descarte diário, as lentes 1-Day Acuvue Moist® com Lacreon® são perfeitas para quem procura lentes que se mantêm hidratadas e confortáveis durante todo o uso.
     
    Pensada para quem tem olhos sensíveis, a lente Acuvue Moist® possui a exclusiva tecnologia Lacreon®, um agente umectante que ajuda a manter o filme lacrimal estável, proporcionando maior conforto aos olhos.
     
    Ter os olhos livres de irritações causadas pela falta de hidratação pode estar mais perto do que você imagina: as lentes 1-Day Acuvue Moist® com Lacreon® contam com um teor de água de 58% e são feitas de material ultra-respirável. 
     
    Olhos lubrificados, hidratados e protegidos dos raios UV com 1-Day Acuvue Moist® com Lacreon®!
     


    Principais Características da 1-Day Acuvue Moist® com Lacreon®:
     
    ✔ Ideal para olhos sensíveis - conta com alto nível de hidratação;
    ✔ Tecnologia Lacreon® um agente umectante que proporciona maior conforto;
    ✔ Proteção UV;
    ✔ Praticidade do descarte diário - você tem uma lente nova todos os dias.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',172.00),
      (11,'Avaira Vitality','Avaira Vitality','lentes-de-contato-avaira-vitality-67917.jpg','Lentes de contato Avaira Vitality&nbsp;As lentes de contato Avaira Vitality são lentes de descarte mensal para miopia e hipermetropia que promovem conforto à sua visão durante todo período de uso.&nbsp;Fabricadas pela CooperVision, estas lentes são feitas para manter a umidade dos olhos, por isso têm alto teor de água e silicone hidrogel e contam com a exclusiva tecnologia Aquaform, que garante a chegada de 100% do oxigênio necessário aos olhos e mantém a superfície da lente sempre umectada, garantindo hidratação e conforto durante o uso.&nbsp;Por conta desta tecnologia, não é necessário o uso de gotas lubrificantes para manter a hidratação da lente, além dela ser especialmente confortável por sua suavidade e flexibilidade.&nbsp;Uma grande vantagem das lentes de contato Avaira Vitality é que elas bloqueiam mais de 90% de raios UVA e 99% de raios UVB, já que oferecem proteção UV Classe 1, prevenindo danos causados pela exposição ao sol e retardando o desenvolvimento de doenças como a catarata.&nbsp;Além disso, elas garantem visão nítida por contar com o SNA (Sistema de Neutralização de Aberrações) da CooperVision que minimiza as irregularidades esféricas na superfície da lente.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Benefícios das lentes Avaira Vitality:&nbsp;?&nbsp;Material de silicone hidrogel + filtro UV*;?&nbsp;Concebidas para ajudar os olhos a manterem-se hidratados e saudáveis;?&nbsp;Naturalmente umectadas, por isso têm menor probabilidade de ocasionar irritações;?&nbsp;Alto teor de água;?&nbsp;Superfície lisa, garantindo clareza e nitidez?&nbsp;Permitem a chegada de 100% do oxigênio necessário ao olho?&nbsp;Fácil manuseio&nbsp;&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;&nbsp;',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',155.99),
      (12,'Air Optix Plus Hydraglyde para Astigmatismo','Air Optix','air-optix-plus-hydraglyde-para-astigmatismo.jpg','Lentes de contato Air Optix Plus HydraGlyde para Astigmatismo&nbsp;As lentes de contato Air Optix Plus Hydraglyde para Astigmatismo são uma ótima opção de lentes de descarte mensal, que oferecem mais conforto para astigmatas.&nbsp;Excelente para quem sofre com olhos secos, essas lentes fabricadas pela Alcon, fazem parte da família Air Optix e contam com a tecnologia HydraGlyde® Moisture Matrix, que possibilita maior retenção de água por mais tempo, garantindo maior conforto e saúde para os olhos.&nbsp;As lentes Air Optix Plus Hydraglyde para Astigmatismo também empregam a tecnologia SmartShield® da Alcon que reduz o acúmulo de sujeira e proteína nas lentes, oferecendo uma visão mais nítida e evitando irritações.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vantagens da Lente de Contato Air Optix Plus HydraGlyde para Astigmatismo:&nbsp;? Retém mais umidade proporcionando conforto o dia todo;? Reduz os depósitos de proteína e sujeira na superfície das lentes;? Visão nítida para todas as distâncias;? Fácil adaptação e transição de distâncias.&nbsp;Como Cuidar destas Lentes de Contato:- Crie o hábito de limpá-las todos os dias e as substitua no prazo de até 15 dias, recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;IndicaçãoLentes de descarte mensalA Air Optix Plus HydraGlyde para Astigmatismo é indicada para pessoas com astigmatismoLentes de fácil adaptaçãoLembramos que é sempre importante consultar um oftalmologista para saber qual a indicação de uso ideal para o seu caso.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',321.00),
      (13,'PureVision2','PureVision2','lentes-de-contato-purevision-2-57162.jpg','
    Lentes de contato PureVision2
    As lentes de contato PureVision2 da Bausch Lomb, são lentes de silicone hidrogel de alta qualidade indicadas para correção de miopia ou hipermetropia que possuem alta transmissibilidade de oxigênio e bordas finas e arredondadas que proporcionam mais conforto
     
    De fácil manuseio e aplicação, seu desenho reduz a aberração esférica em qualquer dioptria aprovada na ANVISA e, por serem muito finas elas oferecem uma sensação natural nos olhos.
     
    A PureVision2 garante visão nítida e clara e seu material altamente respirável garante a sensação de frescor e evita irritações,  o que a torna ideal para o dia a dia moderno das pessoas que ficam por muito tempo na frente das telas.
     
     


     
    Benefícios das lentes de contato PureVision2
     
    ✔ Comfort MoistTM Technology, solução exclusiva contendo poloxamina que permite lubrificação e limpeza da lente, proporcionando maior conforto na inserção;

    ✔ Borda fina e arredondada, permitindo uma maior passagem da lágrima e interação suave com o olho, gerando maior conforto;✔ Silicone hidrogel, proporciona facilidade de manuseio devido ao menor teor de água;✔ Parâmetro de adaptação único;✔ Resistência ao acúmulo de proteínas (material não iônico).✔ Ideais para quem passa longos períodos exposto a telas✔ Permite a chegada de bastante oxigênio ao olhos garantindo mais saúde✔ Design que evita visão embaçada ou muito brilho
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     

     
     
    Confira toda linha de lentes de contato Bausch &amp; Lomb aqui.
    OBS: O envio da lente teste está condicionado à disponibilidade de estoque.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',177.00),
      (14,'1-Day Acuvue Moist para Astigmatismo','Acuvue Moist','1-day-acuvue-moist-astigmatismo.jpg','Lentes de Contato 1-Day Acuvue Moist® para Astigmatismo com Lacreon®
     
    A possibilidade de obter uma visão nítida, estável, confortável e com a praticidade do descarte diário para usuários com necessidade de correção do astigmatismo associado ou não à miopia ou hipermetropia foi alcançada graças à 1-Day Acuvue Moist® para Astigmatismo com Lacreon®!
     
    A lente 1-Day Acuvue Moist® para Astigmatismo com Lacreon® possui a tecnologia de Desenho de Estabilização Acelerada®, que interage com as pálpebras durante o ato de piscar fazendo com que as lentes permaneçam sempre no eixo correto, independente dos movimentos dos seus olhos e cabeça, proporcionando assim uma visão sempre estável e muito mais segura ao usuário.
     
    E para quem procura lentes que sanem a necessidade de olhos sensíveis e irritados, mais um ponto positivo: as lentes 1-Day Acuvue Moist® para Astigmatismo ainda contam com a tecnologia Lacreon®, com um poderoso agente umectante integrado diretamente a matriz da lente, ajudando a manter o filme lacrimal estável para proporcionar conforto durante todo o dia. 
     
    Produzidas em material ultra-respirável e com 58% de água em sua composição, as lentes 1-Day Acuvue Moist® para Astigmatismo com Lacreon® se mantêm hidratadas, confortáveis, estáveis e ainda protegem os olhos dos raios UV.
     

    Principais Características da 1-Day Acuvue Moist® para Astigmatismo com Lacreon®:
     
    ✔ Corrige o astigmatismo com tecnologias que tornam o uso de lentes muito mais confortáveis;
    ✔ Desenho de Estabilização Acelerada® que mantém a lente na posição correta independente de como você movimenta sua cabeça ou olhos;
    ✔ Tecnologia Lacreon® um agente umectante que proporciona maior conforto;
    ✔ Proteção UV;
    ✔ Praticidade do descarte diário - você tem uma lente nova todos os dias.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',207.00),
      (15,'Biomedics 55 Evolution','Biomedics','lentes-de-contato-biomedics-55-evolution-56922.jpg','Lentes de Contato Biomedics 55 Evolution
     
    Projetadas para evitar o atrito entre a lente e a pálpebra, as lentes de contato Biomedics 55 Evolution são fabricadas pela CooperVision, que há anos investe em tecnologia para garantir uma boa experiência para os usuários de lentes.
    Essas lentes indicadas para correção de miopia e hipermetropia apresentam um desenho asférico em sua superfície, diminuindo a incidência de halos (borrões) ao redor de pontos luminosos e favorecendo a qualidade de visão, mesmo em ambientes mais escuros. Elas contam com o SNA (Sistema Neutralizador de Aberrações), que reduz as imperfeições óticas e conferem mais nitidez a visão.
     
    Finas e macias, a Biomedics 55 Evolution contém 55% de hidratação e proteção contra os raios UV e ainda fornece ajuste e conforto excelentes, o que as torna adequadas para o primeiro uso.
     

    Benefícios das Lentes Biomedics 55 Evolution
     
    ✔ Tradição de mais de uma década em conforto e praticidade;
    ✔ Sistema Neutralizador de Aberrações que permite uma visão mais nítida e precisa;
    ✔ Proteção contra os raios UV.
    ✔ Fácil manuseio, aplicação e adaptação
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',127.00),
      (16,'Air Optix Colors','Air Optix','lentes-de-contato-air-optix-colors-com-grau-63916.jpg','Lentes de contato Air Optix Colors
     
    Se você deseja aliar correção visual confortável e um visual que realce seu olhar, as lentes de contato Air Optix Colors são a escolha ideal.
     
    Essas lentes de contato coloridas realçam a beleza natural dos seus olhos e oferecem uma visão nítida durante todo dia para quem tem miopia e hipermetropia, e também podem ser usadas por quem não precisa de correção visual.
     
    São lentes de descarte mensal da família Air Optix e, por isso, tem alta oxigenação e capacidade de reter água. Feitas com a tecnologia de cor 3 em 1 da Alcon, que mistura 3 anéis de cor aumentando a intensidade da cor e deixando um aspecto natural.
     
     

     
     
    Vantagens da Lente de Contato Air Optix Colors
     
    ✔ Realça a beleza natural dos olhos
    ✔ Muito conforto: alta oxigenação e retenção de umidade
    ✔ Resistente ao acúmulo de depósitos, oferecendo visão nítida todo o mês
    ✔ Superfície suave para oferecer conforto consistente
    ✔ 9 tons diferentes
    ✔ Feitas em silicone hidrogel
     
    Escolha entre as cores:
    Sterling Gray, Gray, Honey, Blue, Gemstone Green, Green, Brown, Brilliant Blue e Pure Hazel.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',157.00),
      (17,'Ultra','Ultra','lentes-de-contato-ultra.jpg','Lentes de contato ULTRA®
     
    A primeira lente a unir conforto, saúde ocular e alta qualidade visual.
     
    As lentes de contato ULTRA®, fabricadas pela pioneira Bausch &amp; Lomb, são lentes de descarte mensal ideais para quem passa longas horas em frente às telas e acaba piscando menos durante o dia, o que diminui a hidratação dos olhos.
     
    Essas lentes possuem a tecnologia MoistureSeal™ que mantém 95% de umidade por até 16 horas, além de ter alto nível de oxigenação, mantendo os olhos hidratados e confortáveis o dia todo.
     
    As lentes de contato ULTRA® são ótimas para novos usuários, sendo fáceis de colocar e se adaptar, e podem ser usadas todos os dias do mês.
     

    Vantagens da Lente de Contato ULTRA®
     
    ✔ Hidratação por até 16 horas por dia
    ✔ Ideais para quem passa muito tempo em frente a telas
    ✔ Com tecnologia MoistureSeal™ que mantem 95% da umidade dos olhos
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',185.90),
      (42,'Optima FW','Optima','lentes-de-contato-optima-fw-56927.jpg','Lentes de contato Optima FW
     
    As lentes de contato Optima FW são fabricadas pela Bausch &amp; Lomb para a correção de miopia e hipermetropia, com descarte anual.Essas lentes contam com desenho ultrafino e materiais tecnológicos para oferecer maior conforto e visão perfeita durante todo o tempo de uso.As lentes Optima FW costumam ter fácil adaptação e manuseio. Além disso, são resistentes ao acúmulo de proteínas e resíduos, garantindo uma visão nítida.
     

    Vantagens da Lente de Contato Optima Fw
     
    ✔ Desenho ultra fino que garante conforto e visão perfeita✔ Excelente conforto e facilidade de manuseio;✔ Facilidade de adaptação;✔ Resistência ao acúmulo de proteínas (material não iônico).
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',112.00);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (19,'Hidroblue UV','Hidroblue','lentes-de-contato-hidroblue-uv-56930.jpg','Lentes de contato Hidroblue UV Esférica
     
    Fabricadas pela Solótica, as lentes de contato Hidroblue UV Esférica são de descarte anual e oferecem conforto com proteção contra os raios ultravioleta.
     
    Feitas com Glicerol, um material de alta qualidade, essas lentes de contato gelatinosas tem alta capacidade de hidratação, mesmo em ambientes mais secos ou com ar-condicionado, e fácil adaptação para pessoas com miopia e hipermetropia.
     
    As lentes de contato Hidroblue UV são resistentes ao acúmulo de proteínas e sujeira na superfície das lentes, o que proporciona uma visão mais nítida e saúde ocular.
     
     

     
    Vantagens da Lente de Contato Hidroblue UV Esférica
     
    ✔ Proteção UV
    ✔ Alto índice de hidratação
    ✔ Facilidade de adaptação e manuseio
    ✔ Resistente ao acúmulo de proteínas
    ✔ Conforto e saúde para sua visão.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',132.00),
      (20,'Biofinity Multifocal','Biofinity ','lentes-de-contato-biofinity-multifocal-57411.jpg','Lentes de contato Biofinity Multifocal
     
    Mais de 40 anos? Conheça lentes de contato multifocais de qualidade superior.
     
    Feitas para pessoas com presbiopia, as lentes de contato Biofinity Multifocal são produzidas com silicone hidrogel e oferecem uma visão nítida para os usuários.
     
    Com descarte mensal, essas lentes possuem a tecnologia Aquaform® da CooperVision que permitem que uma grande quantidade de oxigênio alcance os olhos, garantindo mais saúde e melhor aparência, além de reter mais umidade para proporcionar conforto durante todo uso.
     
    As lentes Biofinity Multifocal ainda contam com a tecnologia Balanced Pregressive™ que possibilitam que as lentes se ajustem aos olhos com segurança facilitando que você foque em objetos em distâncias diferentes com total facilidade.
     
     

     
    Vantagens da Lente de Contato Biofinity Multifocal
     
    ✔ Mais respiráveis com tecnologia patenteada Aquaform®
    ✔ Tecnologia Balanced Progressive™ que possibilita estabilidade
    ✔ Hidratação e conforto durante todo dia
    ✔ Naturalmente umectadas, sem necessidade de uso de gotas lubrificantes
    ✔ Facilidade para focar de perto, longe ou a meia distância
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',422.90),
      (21,'Optima 38','Optima','lentes-de-contato-optima-38-56920.jpg','Lentes de contato Optima 38
     
    As lentes de contato Optima 38 são opções tradicionais para correção de miopia e hipermetropia, com a conveniência do descarte anual.
     
    Fabricadas pelas Bausch &amp; Lomb, essas lentes anuais permitem fácil adaptação aos usuários, por oferecer excelente conforto e facilidade de manuseio e aplicação das lentes.
     
    Com boa resistência ao acúmulo de proteínas, as lentes de contato Optima 38 possibilitam que pessoas com miopia (dificuldade para enxergar de longe) e hipermetropia (dificuldade para enxergar de perto) aproveitem uma visão mais nítida todos os dias do ano.
     
     

     
    Vantagens da Lente de Contato Optima 38
     
    ✔ Facilidade de manuseio e adaptação
    ✔ Resistente ao depósito de proteína nas superfícies das lentes
    ✔ Hidratação prolongada
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',95.90),
      (22,'1-Day Acuvue Moist Multifocal','Acuvue Moist','lente-de-contato-1-day-acuvue-moist-multifocal.jpg','Lentes de contato 1-Day Acuvue Moist® Multifocal com Lacreon®
     
    Quem procura por lentes multifocais que ofereçam estabilidade, visão clara e de qualidade em todas as distâncias e em ambientes claros ou escuros, está no lugar certo! Conheça a 1-Day Acuvue Moist® Multifocal com Lacreon®!
     
    A lente 1-Day Acuvue Moist® Multifocal com Lacreon® oferece uma visão nítida que se encaixa no seu estilo de vida nesta versão corrigindo necessidades da presbiopia.
     
    Com transição perfeita entre as faixas de visão, não há necessidade de usar óculos para realizar suas atividades diárias.
     
    Com a tecnologia Lacreon®, poderoso agente umectante que se integra diretamente a matriz da lente e ajuda a manter o filme lacrimal estável, a 1-Day Acuvue Moist® Multifocal com Lacreon® proporciona conforto durante todo o dia.
     
    A 1-Day Acuvue Moist® Multifocal com Lacreon® é produzida com Etafilcon A respirável, que permite ótima oxigenação e se adapta aos olhos com suavidade, oferecendo maior conforto durante todo o tempo de uso.
     
    A tecnologia Lacreon® da Johnson &amp; Johnson oferece um alto teor de hidratação para os olhos, evitando irritações visuais. Por isso, essas lentes são ótimas opções para quem sofre com olhos secos ou passa muito tempo em ambientes com ar-condicionado ou baixa umidade.
     
    Essas lentes são de descarte diário, eliminando a necessidade de fazer a limpeza das lentes todos os dias. Basta descartá-las após o uso e no dia seguinte abrir uma nova lente.
     
    Além disso, ainda contam com proteção UV para bloquear os efeitos dos raios ultravioletas ao se expor ao sol.
     
    1-Day Acuvue Moist® Multifocal com Lacreon®: Olhos hidratados por muito mais tempo e com a praticidade do descarte diário!
     

     
    Benefícios da Lente de Contato 1-Day Acuvue Moist® Multifocal com Lacreon®:
     
    ✔ Corrige a Presbiopia com tecnologias que tornam o uso das lentes muito mais confortáveis;
    ✔ Transição perfeita entre as faixas de visão;
    ✔ Tecnologia Lacreon® um agente umectante que proporciona maior conforto e hidratação durante todo o dia;
    ✔ Proteção UV;
    ✔ Praticidade do descarte diário - você tem uma lente nova todos os dias;
    ✔ Fácil adaptação;
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',255.00),
      (23,'Clariti 1-Day','Clariti','lentes-de-contato-clariti-1-day-esferica-64293.jpg','Lentes de contato Clariti 1 day
     
    Experimente um novo estilo de vida.
     
    Fabricadas com silicone hidrogel, o material de lentes de contato mais avançado atualmente, as lentes de contato Clariti 1 day deixam seus olhos respirarem melhor, mantendo-os mais saudáveis e confortáveis durante todo o dia.
     
    O descarte diário possibilita um menor acúmulo de depósitos (resíduos, impurezas) na superfície das lentes de contato e oferece mais praticidade, evitando preocupações com soluções de limpeza e estojos para lentes.
     
    As lentes Clariti 1 day contam com a tecnologia WetLoc que por reter água na superfície da lente, mantém os olhos hidratados durante todo o dia.
     
    Além disso, essas lentes ainda bloqueiam os raios ultravioletas, protegendo os olhos da exposição solar.
     
    As lentes Clariti 1 day estão disponíveis também para pessoas com astigmatismo e presbiopia.
     

    Vantagens da Lente de Contato Air Optix Aqua Night &amp; Day
     
    ✔ Descarte diário, mais praticidade para o dia a dia✔ Sensação de lentes novas todos os dias✔ Lentes ultra-respiráveis, que transmite mais oxigênio para manter os olhos saudáveis✔ Proteção UV✔ Tecnologia WetLoc que mantém a hidratação das lentes durante todo o dia, garantindo o conforto✔ Feitas em silicone hidrogel, naturalmente permeáveis ao oxigênio, para olhos mais saudáveis✔ Excelente relação custo-benefício
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Indicação
    Indicadas para pessoas com miopia e hipermetropiaDescarte diárioIdeal para quem deseja mais praticidade no dia a dia
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',142.00),
      (167,'Estojo Lockit Convenience C/Pinca - Verde','','estojo-lockit-convenience-c-pinca-verde.jpg','Tamanho ideal para carregar tudo o que precisa para sua lente de contato

    Kit contém:

    - Um porta estojo com espelho
    - Um estojo Top Line com anel de vedação
    - Um frasco para solução de limpeza e conservação
    - Um dos opcionais: pinça, pegador, ventosa extratora ou ventosa escleral.

    Cores disponíveis:
    Branco, Verde e Rosa',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',62.00),
      (24,'SofLens Multifocal','SofLens','lentes-de-contato-soflens-multifocal-56963.jpg','
    Lentes de contato Soflens Multifocal
    As lentes de contato Soflens Multifocal são lentes de uso mensal que oferecem visão perfeita para quem tem presbiopia, que é a dificuldade de enxergar de perto que acontece em pessoas de mais de 40 anos. Essas lentes podem ser usadas por 30 dias consecutivos, devendo ser retiradas apenas à noite.
    Essas lentes reduzem os efeitos da luz evitando reflexos e são de fácil adaptação por conta de sua superfície lisa, resistente ao acúmulo de proteínas e resíduos. Isso garante segurança para os olhos e  uma visão nítida durante todo o dia.
    A Soflens Multifocal mantém os olhos hidratados durante todo do dia, mantendo o conforto visual e evitando irritações, por isso são adequadas para pessoas que sofrem com os olhos secos.

     
    Vantagens da Lente de Contato Soflens Multifocal
     
    ✔ Alcance visual em qualquer distância (perto, intermediário e longe), evitando a necessidade do uso dos óculos de leitura;✔ Material com resistência à formação de depósito de proteínas;✔ Fácil manuseio e adaptação;✔ Com tinta de visibilidade para facilitar a visualização da lente. ✔ Reduz os efeitos da luz, como reflexos e raios ultravioletas✔ Alto teor de hidratação, sendo ideal para pessoas que têm olhos secos✔ Fácil transição entre distâncias
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',319.00),
      (25,'Natural Colors','Natural Colors','lentes-de-contato-natural-colors-56940.jpg','Lentes de contato Natural Colors
     
    Já pensou em mudar a cor dos seus olhos e realçar sua beleza? A Solótica pensou por você.
     
    As lentes de contato coloridas Natural Colors foram projetadas para transformar a cor do seu olhar, de forma absolutamente discreta e natural. Isso é possível porque elas possuem contorno limbal absolutamente discreto e anel central pigmentado de forma difusa.
    Ideais para quem tem miopia, hipermetropia e para quem não tem necessidade de correção visual.
     
    As lentes de contato Natural Colors devem ser trocadas anualmente e oferecem conforto com alta retenção de umidade e acuidade visual com maior estabilidade nos olhos.
     
    Seu olhar em novas cores: suaves, discretas e bonitas.
     
    Conheça a linha Natural Colors completa aqui.
     
     

     
    Vantagens da Lente de Contato Natural Colors
    ✔ Tecnologia de última geração produzida pela Solótica;
    ✔ Conforto aliado a acuidade visual;
    ✔ Lente com GLICEROL, menor perda de hidratação
    ✔ Efeito natural em 9 opções de cores
     
    Conheça as cores da Natural Colors
    Ice, Mel, Ocre, Quartzo, Topázio,  mbar, Avelã, Cristal e Grafite
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo de até 15 dias, recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Dicas para quem usa lentes de contato
     
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',132.00),
      (26,'Solflex CL','Solflex','lentes-de-contato-solflex-cl-70193.jpg','Lentes de contato Solflex CL
     
    As lentes de contato Solflex CL são opções de descarte mensal para correção de miopia ou hipermetropia que contam com proteção UV.
    São lentes gelatinosas, fáceis de manusear por contarem com visitint, que oferecem conforto por contarem com alta hidratação, que chega até 55%. O diâmetro da lente auxilia na centralização e assegura uma ampla faixa de adaptação em vários tamanhos de córnea fornecendo ótimas opções para os pacientes.
    Com alta tecnologia, as lentes Solflex CL garantem ótima acuidade visual, eliminando aberrações e garantindo o maior contraste, pela ampla faixa de graus disponíveis e incorporação óptica asférica.
     

    Vantagens da Lente de Contato Solflex CL
     
    ✔ Proteção UVA e UVB✔ Alta taxa de hidratação✔ Conforto e acuidade visual✔ Fácil manuseio ✔ Fácil adaptação para diferentes tamanhos de córnea✔ Eliminar aberrações e maximiza o contraste
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',162.00),
      (27,'Hidrocor','Hidrocor','lentes-de-contato-hidrocor-57486.jpg','Lentes de contato Hidrocor com grau
     
    Já pensou em mudar a cor dos seus olhos e realçar sua beleza? A Solótica pensou por você.
     
    As lentes de contato coloridas Hidrocor com grau apresentam cores muito suaves que se mesclam com a cor dos olhos causando um efeito natural. Combinando tecnologia com cores lindas, as lentes Hidrocor não têm o anel limbal (usado para realçar a íris em algumas lentes coloridas), o que garante que a aparência dos olhos não fique artificial.
     
    Com substituição anual, estas lentes gelatinosas de fácil adaptação estão disponíveis em várias opções de cores e atendem graus de miopia e hipermetropia. Para conhecer a opção da lentes hidrocor para astigmatismo, clique aqui.
    Conheça a linha Hidrocor completa aqui.
     
     

     
     
    Benefícios das lentes de contato Hidrocor com grau
     
    ✔ Saúde ocular, devido à resistência ao acúmulo de proteínas;
    ✔ Facilidade de adaptação;✔ Hidratação e lubrificação;✔ Ampla variedade de cores;
     
    Cores
     
    Mel, Ocre, Grafite, mbar, Avelã, Ice, Topázio, Quartzo, Cristal, Jade, Safira e Aquamarine.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Indicação
     
    Lentes de contato gelatinosas cosméticas, indicadas para estética e com a opção de encomenda para a correção de Miopia ou Hipermetropia. Não corrigem astigmatismo.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',127.99);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (43,'Biosoft Asférica HD','Biosoft','biosoft-hd-asferica.jpg','Lentes de Contato Biosoft Asférica HD
     
    As lentes de contato Biosoft Asférica HD são lentes que oferecem um equilíbrio ideal entre manuseio, conforto e visão. A lente foi aprimorada com desenho asférico para corrigir a aberração óptica e otimizar a experiência visual geral.
     
    Essas lentes para miopia e hipermetropia, fabricadas pela Central Oftálmica, são lentes de alta definição fabricadas em silicone hidrogel que melhora a lubrificação, garantindo assim o conforto e praticidade para o dia-a-dia.
     

    Benefícios da Biosoft Asférica HD:
     
    ✔ Tecnologia que proporciona adaptação e acuidade visual perfeita
    ✔ Adaptação fácil com segurança e conforto
    ✔ Resistente ao acúmulo de impurezas
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',69.00),
      (28,'Biofinity Energys','Biofinity ','biofinity-energys.png','Lentes de contato Biofinity Energys™
     
    As lentes de contato Biofinity Energys™ são ideais para quem procura lentes que ofereçam conforto durante o uso de aparelhos digitais como monitores, computadores, tablets e celulares.
     
    Lentes de contato mensais, desenvolvidas pelas CooperVision, a Biofinity Energys™ contam com o exclusivo desenho Digital Zone Optics™, que ajuda a reduzir o esforço visual e o incômodo causado por ressecamento ao ter os olhos expostos à luz azul emitida por aparelhos eletrônicos.
     
    A tecnologia Digital Zone Optics™ também reduz o cansaço dos músculos que nos permitem enxergar objetos em distâncias variadas, aliviando o esforço visual ao trocar o foco entre as telas e os objetos ao redor.
     
    A Biofinity Energys™ é uma lente de contato para miopia e hipermetropia que conta com a tecnologia Aquaform®, que atrai e retém a umectação em toda a superfície da lente, reduzindo significativamente e de forma natural o ressecamento dos olhos.
     
    Além de todos esses benefícios, ela é produzida em material com alto nível de oxigenação, que permite que 100% do oxigênio tenha acesso aos olhos e os mantenha seguros e confortáveis durante todo o uso das lentes.
     
    Com as lentes de contato Biofinity Energys™, você se sentirá livre e seguro para realizar suas atividades diárias sem incômodos, em frente ou longe das telas.
     
     

     
     
    Vantagens da Lente de Contato Biofinity Energys™
     
    ✔ Desenho Digital Zone Optics™ que reduz o cansaço da visual e o ressecamentos dos olhos causados pelo uso de telas;
    ✔ Tecnologia Aquaform®: atrai e retém a água para olhos mais hidratados;
    ✔ Alta oxigenação dos olhos para mais saúde visual.
     
     
    Principais Características da Biofinity Energys™:
     
    ✔ Tecnologia Hydraclear® Plus, componente umectante que incorpora a lágrima e mantém os olhos hidratados e confortáveis durante todo o uso;
    ✔ A marca mais confortável para 7 em cada 10 usuários de lentes de contato;  
    ✔ Bordas infinitas que oferecem maior conforto e adaptação;
    ✔ Proteção UVA e UVB contra os raios ultravioleta;
    ✔ Insuperável em conforto, mesmo em estudos patrocinados por outros fabricantes.
     
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo de até 30 dias, recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',205.00),
      (29,'Air Optix Plus Hydraglyde Multifocal','Air Optix','air-optix-hydraglyde-multifocal.jpg','Lentes de contato Air Optix Plus HydraGlyde Multifocal
     
     
    As novas lentes de contao AIR OPTIX™ PLUS HYDRAGLYDE MULTIFOCAL são lentes de contato gelatinosas, multifocais, de silicone hidrogel e com um avançado desenho para corrigir pacientes presbitas, até mesmo aqueles no início da presbiopia.
     
    Fabricada pela Alcon, a Air Optix plus HydraGlyde Multifocal foi construída sobre a base da Air Optix® Aqua Multifocal e conta com uma melhoria no conforto do usuário, graças a tecnologia HydraGlyde.
     
    Essa novidade permite que as lentes retenham mais umidade, mantendo os olhos sempre hidratados. Além disso, também são mais resistentes a resíduos, mantendo a visão nítida por mais tempo.
     
    As lentes multifocais são feitas especialmente para a correção da presbiopia, que é a dificuldade de enxergar de perto que acontece em pessoas de mais de 40 anos. A Air Optix plus HydraGlyde Multifocal permite uma visão nítida para todas as distâncias e tem fácil adaptação.
     
     
     
     

     
     
     
    Vantagens da Lente de Contato Air Optix Plus HydraGlyde Multifocal:
     
     
    ✔ Visão nítida e conforto superior em comparação com as principais lentes de contato multifocais de silicone-hidrogel;
    ✔ Excelente conforto desde o momento em que as lentes são colocadas, durante todo o dia e todos os dias de uso;
    ✔ A quantidade correta de adição otimiza a visão de perto e intermediária sem comprometer a visão de longe;
    ✔ Mais resistência aos depósitos, até 6 vezes menos depósitos de lipídios na superfície da lente em comparação com outras lentes de silicone-hidrogel;
    ✔ Fácil manuseio;
    ✔ Desenho inovador que oferece uma visão nítida e clara de todas as distâncias, com uma suave transição de perto para longe.
     
     
    Como Cuidar destas Lentes de Contato:
     
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     
     
    Lembramos que é sempre importante consultar um oftalmologista para saber qual a indicação de uso ideal para o seu caso.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',427.90),
      (30,'PureVision2 Toric','PureVision2','lentes-de-contato-purevision2-toric.jpg','Lentes de contato Purevision2 Toric
    Uma visão com mais qualidade, lapidada pela estabilidade, nitidez e conforto das lentes de contato Purevision2 Toric. Essas lentes de contato de silicone hidrogel, com descarte mensal, são indicadas para correção do astigmatismo e apresentam bordas finas, arredondadas e maior conforto durante o uso. As lentes de contato Purevision2 Toric possuem tecnologia Auto Align DesignTM, uma combinação do Prisma de Lastro com o Lastro Periférico, que aumenta a estabilidade da lente no olho, oferecendo uma visão nítida e consistente em todos os momentos.Feitas para serem usadas por longos períodos, essas lentes garantem visão saudável e conforto por até 16 horas de uso, todos os dias do mês.
     
     

     
     
    Vantagens da Lente de Contato Purevision2 Toric
     
    ✔ Tecnologia Auto Align DesignTM que garante mais estabilidade ✔ Desenho ideal para correção de miopia e hipermetropia associada ao astigmatismo✔ Visão nítida e confortável por até 16 horas
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Indicação
     
    Lentes indicadas para correção de astigmatismoUso: Diário ou prolongado de 1 a 30 dias*;Descarte: Mensal;Apresentação: Cartucho com 6 lentes.*Consulte seu oftalmologista para saber a indicação ideal para o seu caso.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',287.90),
      (31,'Ultra Toric para Astigmatismo','Ultra','lente-ultra-toric-para-astigmatismo.jpg','Lentes de contato ULTRA® para Astigmatismo
     
    Conforto, saúde ocular e alta qualidade visual. As características das, já conhecidas, lentes de contato ULTRA®, agora para quem tem astigmatismo.As lentes de contato ULTRA® para Astigmatismo são fabricadas pela pioneira Bausch &amp; Lomb, e contam com uma superfície umectável devido a tecnologia MoistureSeal™. Isso significa que a superfície da lente é hidrofílica, proporcionando uma alta capacidade de lubrificação, que mantém 95% de hidratação por até 16 horas de uso. Essas lentes de descarte mensal possuem desenho asférico que diminuem as aberrações causadas pelo astigmatismo, garantindo nitidez para a visão. Além disso, essas lentes também proporcionam uma fácil adaptação.
     
     

     
     
    Vantagens da Lente de Contato ULTRA® para Astigmatismo
     
    ✔ Hidratação por até 16 horas por dia
    ✔ Ideais para novos usuários com fácil adaptação
    ✔ Com tecnologia MoistureSeal™ que mantém 95% da umidade dos olhos
    ✔ Alta oxigenação mantendo o conforto visual
    ✔ Controle das aberrações esféricas proporcionando visão nítida
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Indicação
     
    Lentes para correção de astigmatismoDescarte mensal, podendo ser usada todos os dias do mês',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',297.00),
      (108,'Vision 20/20','Vision 20/20','vision-20-20.jpg','Lentes de Contato Vision 20/20:
     
    As lentes de contato Vision 20/20 são lentes gelatinosas de descarte mensal. Indicadas para correção de Miopia e Hipermetropia.
    São lentes são feitas para manter a umidade dos olhos, por isso têm alto teor de água, garantindo hidratação e conforto durante o uso.
     
     

     
    Benefícios da lente de contato Vision 20/20:
     
    ✔ Alto teor de água, garantindo hidratação dos olhos;
    ✔ Fácil manuseio;
    ✔ Permitem a chegada de 100% do oxigênio necessário ao olho;
    ✔ Superfície lisa, garantindo clareza e nitidez.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',127.99),
      (32,'Acuvue Oasys 1-Day com Hydraluxe Astigmatismo','Acuvue Oasys','acuvue-clear-1-lc.jpg','Lentes de Contato Acuvue Oasys 1-Day com Hydraluxe Astigmatismo:
     
    A inovação e tecnologia das lentes de contato diárias da Acuvue, feitas especialmente para quem tem astigmatismo. A Acuvue Oasys 1-Day com Hydraluxe Astigmatismo são feitas com Tecnologia HydraLuxe™, que ajuda a diminuir a sensação de olhos cansados devido ao uso de aparelhos digitais.
     
    Essas lentes de contato para astigmatismo oferecem conforto e visão nítida por até 24 horas por dia. Seu design proporciona mais estabilidade, mantendo as lentes sempre no lugar para garantir visão nítida mesmo durante a movimentação da cabeça.
     
    Outro diferencial das lentes Acuvue Oasys 1-Day com Hydraluxe Astigmatismo é a proteção de 95% contra os raios UVA/UVB, sendo uma boa opção para quem fica muitas horas sob o sol.
     
    O descarte diário oferece praticidade, dispensando a higienização das lentes, e muito mais conforto, com a sensação de lentes novas todos os dias.
     

     
    Vantagem das lentes de contato Acuvue Oasys 1-Day com Hydraluxe Astigmatismo:
     
    ✔ Tecnologia HydraLuxe™ proporciona conforto e nitidez;
    ✔ 95% de proteção UVA/UVB para quem fica exposto aos raios solares;
    ✔ Ideal para quem passar horas na frente de telas, reduzindo a sensação de fadiga ocular;
    ✔ Descarte diário que proporciona mais praticidade e conforto;
    ✔ Design que oferece estabilidade em todas as situações.
     
    Principais características:
     
    ✔ A família ACUVUE® OASYS oferece conforto imbatível, mesmo durante o uso de aparelhos digitais. O conforto que seus olhos merecem.                  
    ✔ A única marca de lente de contato com HydraLuxe™, que proporciona conforto durante o uso, qualidade de visão e facilidade no manuseio.                             
    ✔ Exclusiva solução de blister para melhor sensação na colocação da lente.                          
    ✔ O mais alto nível de proteção UV disponível em uma lente de contato.                
    ✔ ACUVUE® OASYS é a marca de lentes de contato mais vendida no mundo.                        
    ✔ Disponível para correção de astigmatismo.                      
    ✔ Visão estável e de qualidade, independentemente de como você movimenta sua cabeça ou seus olhos.                             
    ✔ Uso único e descarte diário, dispensando o uso de estojo e solução de limpeza. Disponíveis em embalagens com 30 unidades.                                         
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',249.00),
      (33,'Soflens Daily','SofLens','lentes-de-contato-soflens-daily-64273.jpg','Lentes de contato Soflens Daily
     
    As lentes de contato Soflens Daily, fabricadas pela pioneira da indústria ótica Bausch &amp; Lomb, são lentes de descarte diário, perfeitas para quem tem uma vida corrida e precisa de praticidade.Com ótimo custo-benefício, essas lentes possuem a tecnologia ComfortMoist™, promovendo conforto durante todo o período de uso.As Soflens Daily são lentes super finas e criam uma camada de umidade que facilita a adaptação e o uso. Com formato asférico, essas lentes promovem uma alta definição para uma visão mais nídia.Como devem ser descartadas no fim do dia, essas lentes oferecem maior praticidade, eliminando a necessidade de limpeza e armazenagem.
     

    Vantagens da lente de contato Soflens Daily
     
    ✔ Alta definição, proporcionando visão nítida e clara durante todo o dia;✔ Tecnologia ComfortMoist™ que mantém os olhos hidratados✔ Blister desenvolvido para facilitar a remoção e manuseio das lentes✔ Praticidade do descarte diário ✔ Sem necessidade de limpeza✔ Desenho asférico, que reduz a aberração esférica;✔ Melhor qualidade de visão à noite ou em ambientes escuros;✔ Mais detalhes, contrastes e cores vivas, com redução de halos e glare.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',135.00),
      (34,'Optima Natural Look','Optima','lentes-de-contato-natural-look-com-grau-56939.jpg','
    Lentes de contato Optima Natural Look
     
    Lente de contato colorida de descarte anual, a Optima Natural Look reproduz os detalhes da íris com grande fidelidade, proporcionando uma aparência natural em 10 opções de cores.
     
    Feitas com material de alta qualidade, que oferece maior conforto e facilidade de adaptação as lentes de contato Optima Natural Look são fabricadas pela Bausch &amp; Lomb que é pioneira na produção de itens óticos.
     
    Indicadas para correção de miopia (dificuldade em ver de longe) e hipermetropia (dificuldade em ver de perto), com essas lentes você pode aliar visão nítida, saúde ocular e beleza para seus olhos.
     
     
     

     
     
    Vantagens da Lente de Contato Optima Natural Look
    ✔ Facilidade de manuseio e adaptação✔ Correção visual com efeito cosmético natural✔ 10 opções de cor
     
    Conheça as cores
    Light Green, Dark Green, Blue Topaz, Dark Hazel, Green Amazon, Green Turquoise, Blue, Gray, Hazel e Green Ocean.
     
    Como Cuidar destas Lentes de Contato:
     - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     



    Saiba mais sobre Lentes de Contato Bausch + Lomb
    Tradição que inspira liberdade. Confira aqui.
     
     
     

    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',65.90),
      (35,'Acuvue Oasys com Transitions','Acuvue Oasys','acuvue-oasys-com-transitions.jpg','Lentes de contato Acuvue Oasys com Transitions™
     
    As lentes de contato Acuvue Oasys com Transitions™ une as tecnologias de Acuvue Oasys com a das lentes Transitions, corrigindo a visão de quem tem miopia ou hipermetropia, enquanto protegem seus olhos da mudança de luz dos ambientes.
     
    Primeira e única lente de contato com a tecnologia Transitions™ Light Intelligent Technology™3, essas lentes contam com um tratamento que filtra e reduz de maneira natural a exposição à luz intensa, protegendo seus olhos nas mudanças de ambientes internos ou externos.
     
    Ou seja, elas escurecem quando expostas ao ar livre e ficam mais claras em ambientes fechados.
     
    As lentes Acuvue Oasys com Transitions™ oferecem a maior proteção existente em uma lente de contato contra os raios solares, bloqueando 100% dos raios UVB e 99% dos raios UVA que são extremamente nocivos aos nossos olhos.
     
    Com conforto imbatível, Acuvue® Oasys com Transitions™ oferece performance superior e em diversas atividades, incluindo a prática de esporte, pois é totalmente adaptável à variação da luz.
     
    Essas lentes também são ideais para quem passa longas horas em frente à telas, já que conta com filtro de Luz Azul para que você utilize aparelhos digitais com proteção.
     
    Diga adeus ao incômodo causado por feixes de luz e reduza a sensação de olhos cansados. As lentes de contato Acuvue® Oasys com Transitions™ oferecem maior resolução e contraste, garantindo uma visão sempre nítida para quem tem miopia ou hipermetropia.
     

     
    Vantagens da Lente de Contato Acuvue Oasys com Transitions™
     
    ✔ Desenvolvida com Transitions™ Light Intelligent Technology™3, tratamento que filtra a exposição à luz de maneira natural;
    ✔ Oferece performance superior e conforto em diversas atividades, incluindo a prática de esportes;
    ✔ Bloqueia 100% dos raios UVB e mais de 99% dos raios UVA;
    ✔ Filtro de Luz Azul que protege os olhos da luz emitida por aparelhos digitais;
    ✔ Conforto imbatível;
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo de até 15 dias, recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',255.90);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (36,'Dailies Aqua Comfort Plus - 10 Unidades','Dailies','lentes-de-contato-dailies-aqua-comfort-plus-com-10-unidades.jpg','Lentes de Contato Dailies AquaComfort Plus - 10 unidades:
     
    Se você tem uma rotina dinâmica e deseja experimentar a praticidade das lentes diárias, a Dailies AquaComfort Plus - 10 Unidades é perfeita para você.
     
    Essas lentes de contato fabricadas pela Alcon são feitas para serem usadas por apenas um dia e, então, descartadas. Eliminando assim a necessidade de limpeza das lentes e o uso de estojo, e facilitando o dia a dia.
     
    As lentes de contato diárias Dailies AquaComfort Plus - 10 Unidades contam com tecnologia avançada para manter a hidratação dos olhos a cada piscada. Isso acontece graças à molécula exclusiva PVA, que libera hidratação dos dois lados da lente, deixando o filme lacrimal mais estabilizado e a visão mais nítida.
     
    Essa caixa com 10 unidades é ideal para quem deseja conhecer essas lentes que são de fácil adaptação e oferecem muito conforto.
     
     
     

     
     
    Vantagens da Lente de Contato Dailies AquaComfort Plux - 10 unidades:
     
    ✔ Ideal para experimentar
    ✔ Praticidade para quem usa lentes ocasionalmente ou tem uma rotina corrida
    ✔ Não precisa de limpeza, podendo ser descartadas
    ✔ Sem preocupação com acúmulo de depósito
    ✔ Conta com a exclusiva molécula PVA que garante maior hidratação.
     
     
     
    Conteúdo da embalagem:
     
    As lentes de contato coloridas DAILIES AquaComfort Plus vêm em embalagem com 10 lentes de mesmo grau, de descarte diário.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',55.00),
      (109,'Estojo Pocket Top Line - Branco','','estojo-pocket-top-line-branco.jpg','O Par Perfeito para sua lente de contato

    Kit contém:

    - Um porta estojo com espelho
    - Um estojo Top Line com anel de vedação (para todos os tipos de lentes, inclusive a escleral)
    - Um opcional: - Pinça pequena; ou Pegador de lentes gelatinosa; ou Ventosa Extratora; ou Ventosa Escleral.

    Cores disponíveis:
    Verde, Rosa e Branco',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',57.00),
      (37,'Lunare Anual - com grau','Lunare','lentes-de-contato-lunare-anual-com-grau-63901.jpg','Lentes de contato Lunare Anual com grau:
     
    As lentes de contato Lunare Mensal com grau são indicadas para a correção visual de pessoas com miopia e hipermetropia, enquanto oferecem uma nova cor para os olhos desses usuários.
    Com a exclusiva tecnologia TKI (Tri-Kolor Inside), essas lentes de descarte anual são produzidas com três camadas internas de pigmentação. O que proporciona conforto superior e aspecto mais natural.
    O conforto dessas lentes também se deve ao fato da pigmentação ser absorvida pelas lentes, evitando o atrito entre a lente e a pálpebra.
     
     

     
     
    Benefícios da Lente de Contato Lunare Anual com grau:
     
    ✔ Correção visual com efeito cosmético natural;
    ✔ Facilidade de adaptação;
    ✔ Descarte mensal, com grau.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Conheça as cores das lentes de contato Lunare Mensal com grau:
    Green, Dark Green, Blue, Light Blue, Gray, Blue Gray, Hazel
     
    Tecnologia Tki
     
    Com a inovadora tecnologia TKI (Tri-Kolor Inside), a pigmentação das lentes Lunare é feita dentro da lente, ao contrário de outras lentes coloridas, em que o pigmento é colocado na superfície.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',95.90),
      (38,'SoftFlex 55W','SoftFlex','lentes-de-contato-softflex-55w-64278.jpg','Lentes de contato SoftFlex 55W
     
    As lentes de contato Softflex 55W, fabricadas pela Central Oftálmica são lentes de descarte anual com excelente custo benefício. Indicadas para pessoas que tenham Miopia (dificuldade de enxergar de longe) ou Hipermetropia (dificuldade de enxergar de perto).Essas lentes de hidrogel são feitas com material hidrofílico de alta performance que garante maior conforto e uma adaptação mais fácil. Com 55% de hidratação e boa oxigenação, essas lentes se mantêm úmidas durante o uso e evitam o acúmulo de resíduos.As lentes Softflex 55W tem um design diferenciado que reduz a aberrações visuais e oferece uma visão nítida durante todo o uso.
     

    Vantagens das lentes de contato SoftFlex 55W
     
    ✔ 55% de hidração e alta oxigenação;✔ Conforto e fácil adaptação;✔ Fácil adaptação;✔ Design que reduz aberrações visuais.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',59.90),
      (39,'PureVision2  Multifocal','PureVision2','purevision2-multi-focal.jpg','Lentes de contato Purevision2 Multifocal
    Fabricadas pela Bausch&amp;Lomb, as lentes de contato PureVision2 Multifocal são feitas especialmente para pessoas que têm presbiopia, que é a dificuldade de enxergar de perto que surge após os 40 anos de idade.Essas lentes, que substituem os óculos bifocais ou multifocais, são confortáveis e oferecem uma visão nítida para objetos próximos e distantes.Feitas em silicone hidrogel, a PureVision2 Multifocal conta com a tecnologia  AerGel™, que permite que mais oxigênio chegue aos olhos e evita o acúmulo de resíduos na lente, prevenindo irritações e garantindo mais saúde para os olhos.Além disso, as lentes PureVision2 Multifocal retêm a umidade e mantem seus olhos hidratados durante todo o tempo de uso, garantindo maior conforto por até 16 horas de uso por dia durante um mês, desde que sejam sempre higienizadas e armazenadas em solução durante a noite.A PureVision2 Multifocal conta ainda com a nova geração do desenho Centro-Perto, possibilitando foco em qualquer distância. Bordas mais finas, arredondadas e adaptação mais simples.
     

    Vantagens da Lente de Contato Purevision Multifocal
     
    ✔ Maior poder de adição de perto;
    ✔ Zona de transição maior entre a visão de perto e de longe, garantindo uma visão intermediária mais gradual;✔ Desenho otimizado para uma visão de longe mais natural;✔ Lentes finas e confortáveis.✔ Contam com tecnologia AerGel™ que oferece uma superfície lisa e mais oxigenação✔ Pode ser usado por até 16 horas por dia**Consulte seu oftalmologista para saber a melhor indicação de uso para você.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo de até 30 dias, recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',399.90),
      (40,'Air Optix Night & Day Aqua','Air Optix','lentes-de-contato-air-optix-night-e-day-aqua-57500.jpg','Lentes de contato Air Optix Aqua Night &amp; Day
     
    As lentes de contato Air Optix Aqua Night &amp; Day foram especialmente projetadas para uso prolongado. Ou seja, essas lentes podem ser usadas por até 30 dias e 30 noites, assim você já acorda com a visão nítida.
     
    Para fazer o uso prolongado dessas lentes é necessária orientação de um oftalmologista e, caso não seja o indicado, é possível usar essas lentes apenas durante o dia.
     
    Com tecnologia TriComfort™, a Air Optix Aqua Night &amp; Day tem a superfície ultra lisa, o que facilita a adaptação, e é mais resistente a proteínas e resíduos, aumentando o conforto e mantendo um aspecto saudável para os olhos durante todo dia.
     
    Além disso, essas lentes são altamente respiráveis, permitindo que uma grande quantidade de oxigênio chegue aos olhos mantendo-os hidratados durante todo uso. As lentes Air Optix Aqua Night &amp; Day são feitas de silicone hidrogel e são de fácil adaptação.
     
     

     
     
    Vantagens da Lente de Contato Air Optix Aqua Night &amp; Day:
     
    ✔ Melhor acuidade visual devido a seu desenho biasférico que elimina a aberração esférica;
    ✔ Maior resistência aos depósitos, graças a seu tratamento de plasma;
    ✔ Umidificação superior na superfície, para maior conforto durante o uso;
    ✔ Menor desidratação;
    ✔ Conforto prolongado mesmo durante longas horas de uso;
    ✔ Lentes de silicone hidrogel com a mais alta transmissão de oxigênio dentre as lentes de contato gelatinosas.
    ✔ Sensação de estar sem lentes de contato
     
    Lembramos que é sempre importante consultar um oftalmologista para saber qual a indicação de uso ideal para o seu caso.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo de até 30 dias, recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',382.00),
      (41,'Dailies Aqua Comfort Plus','Dailies','lentes-de-contato-dailies-aqua-comfort-plus-57406.jpg','Lentes de Contato Dailies AquaComfort Plus
     
    As lentes de contato diárias Dailies AquaComfort Plus são uma opção saudável, refrescante e versátil para quem usa lentes de contato ocasionalmente!Perfeitas para quem leva uma vida dinâmica e não quer ter a necessidade de fazer a limpeza das lentes com solução. Essas lentes oferecem saúde para os olhos e muita praticidade tanto para quem usa todos os dias, como para situações pontuais.Sua tecnologia avançada oferece hidratação a cada piscada através da molécula exclusiva PVA. Liberando umidade dos dois lados da lente e mantendo o filme lacrimal estável, o que garante uma visão mais nítida e confortável.De fácil adaptação, a Dailies AquaComfort Plus são convenientes e segura, evitam o risco de confusão das lentes na troca e não acumulam resíduos.
     
     

     
    Vantagens da lente de contato DAILIES AquaComfort Plus
     
    ✔ Fáceis de usar – sem soluções de limpeza e desinfecção;✔ Convenientes – sem necessidade de controle de datas para troca das lentes;✔ Uma opção saudável – sem preocupação com o acúmulo de depósitos ao longo do tempo;✔ Contam com a exclusiva molécula PVA que garante maior hidratação;✔ Mantém o conforto e estabilidade durante todo o uso.
     
     
    Assista sobre as lentes DAILIES AquaComfort Plus
     

     
     
     
    Saiba mais sobre Lentes de Contato ALCON
    Ajudando as pessoas a enxergarem melhor. Confira aqui.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',129.00),
      (44,'Dailies Aqua Comfort Plus - 90 Unidades','Dailies','dailies-aquacomfort-plus-90-unidades.jpg','Lentes de Contato Dailies AquaComfort Plus - 90 unidades
     
    As lentes de contato DAILIES AquaComfort Plus são opções de descarte diário para quem tem uma rotina dinâmica e não tem tempo de fazer a higienização das lentes todos os dias.
     
    Perfeitas para quem quer se sentir sempre livre para aproveitar todos os momentos do jeito que gosta, seja praticando esportes ou em um jantar especial.
     
    Essas lentes diárias contam com uma tecnologia avançada que hidrata os olhos a cada piscada, graças a uma molécula exclusiva chamada PVA, que libera hidratação dos dois lados da lente, deixando o filme lacrimal mais estabilizado e a visão mais nítida.
     
    Com fácil adaptação e muito conforto, essas lentes são muito práticas, já que devem ser descartadas após um dia de uso.
     
    A caixa das Lentes de Contato Dailies AquaComfort Plus - 90 unidades vem com 90 lentes do mesmo grau, oferecendo pelo menos 45 dias de visão nítida e conforto.
     
     
     

     
     
    Vantagens da Lente de Contato Dailies AquaComfort Plux - 90 unidades
     
     
    ✔ Saudável, refrescante e versátil para quem usa lentes de contato ocasionalmente!
    ✔ Fáceis de usar – sem soluções de limpeza e desinfecção;
    ✔ Convenientes – sem necessidade de controle de datas para troca das lentes;
    ✔ Uma opção saudável – sem preocupação com o acúmulo de depósitos ao longo do tempo.
    ✔ Contam com a exclusiva molécula PVA que garante maior hidratação
     
     
    Assista sobre as lentes DAILIES AquaComfort Plus
     

     
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',362.99),
      (45,'Bioview 55 Asférica','Bioview','bioview-55-asferica.jpg','Lentes de Contato Bioview 55 Asférica:
     
    As lentes de contato Bioview 55 UV Asférica são lentes de alta definição, diferente de outras lentes asféricas do mercado, que incorpora a curvatura asférica ideal para cada potência.
    Lente macia que compensa a aberração causada pela flexão da lente no olho, resultando em uma melhor acuidade visual a qualquer distância.
     

    Benefícios das Lentes de Contato Bioview 55 Asférica:
     
    ✔ Hidratação Equilibrada;
    ✔ Desenho Asférico, controle de aberração;
    ✔ Proteção UVA e UVB
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas. ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',165.00),
      (46,'Optycolor Magic Top','Optycolor','lentes-de-contato-optycolor-magic-top.jpg','Lentes de Contato Coloridas Optycolor Magic Top
     
    As lentes de contato coloridas Optycolor Magic Top são lentes gelatinosas que corrigem miopias e hipermetropias que confere um visual natural para os olhos.Disponível em 6 cores, essas lentes coloridas realçam o olhar e permitem que você mude de estilo com naturalidade.Feitas em material tecnológico, essas lentes de descarte anual garantem conforto durante todo o período de uso.
     
     

     
    Vantagens da Lente de Contato Optycolor Magic Top
     
    ✔ Lentes coloridas com grau que corrigem Miopia e Hipermetropia;✔ Facilidade de adaptação;✔ Excelente conforto e manuseio;✔ Lentes hidratadas o dia todo;✔ Mudam a aparência com naturalidade.
     
    Conheça as cores das lentes Optycolor Magic Top
     
    Azul, cinza, lavanda, mel, turquesa, verde
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',149.90);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (47,'Hidroblue UV Tórica','Hidroblue','lentes-de-contato-hidroblue-torica-57108.jpg','Lentes de contato Hidroblue UV Tórica:
     
    ATENÇÃO: LENTE SOB ENCOMENDA
    Após a compra da lente, é necessário o envio da receita  e o exame de TOPOGRAFIA ou CERATOMETRIA. Caso Tenta alguma dificuldade no envio no ato da compra, por favor enviar pelo Fale Conosco.
     
    IMPORTANTE:
     
    O fabricante não aceita cancelamentos e devoluções para troca deste produto. Exceção somente para defeito de fabricação, comprovados após análise técnica.Em caso de dúvidas, entre em contato conosco.
     
    CENTRAL DE RELACIONAMENTO: 
     
    Atendimento de Segunda a Sexta-feira, das 9h às 17h(Exceto Feriados)
    Telefone: (11) 4873-2173
     
    —--
     
    Fabricadas pela Solótica, as lentes de contato Hidroblue UV Tórica são feitas especialmente para pessoas que têm astigmatismo, associado ou não a miopia ou hipermetropia.Essas lentes, de descarte anual, oferecem conforto e acuidade visual e ainda contam com proteção contra os raios ultravioleta.As lentes de contato Hidroblue UV Tórica são produzidas com  Glicerol, um material de alta qualidade, que garante alta capacidade de hidratação e a estabilidade das lentes.Por isso, essa opção é indicada para pessoas que sofrem com olhos secos ou passam longas horas em ambientes com ar-condicionado.As lentes de contato Hidroblue UV são resistentes ao acúmulo de proteínas e sujeira na superfície das lentes, o que proporciona uma visão mais nítida e saúde ocular.
     
     

     
    Vantagens da Lente de Contato Hidroblue UV Tórica:
     
    ✔ Proteção UV;✔ Feita com GLICEROL, que proporciona alto índice de hidratação;✔ Possui tinta de visibilidade, que facilita o manuseio;✔ Fácil adaptação;✔ Resistente ao acúmulo de proteínas.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     
    Prazo de validade:
     
    O prazo das lentes de contato lacradas é maior porque elas estão esterilizadas pelo processo de autoclave a 120 graus Celsius, livre de qualquer contaminação.A validade da lente começa a partir da abertura do lacre, pois o produto deixa de ser estéril, tendo influências de vários fatores para sua contaminação, como: proteínas da lágrima, fuligem, poeira, células epiteliais que se renovam, entre outros.O período de descartabilidade (troca anual ou mensal) deve ser respeitado de acordo com a orientação do fabricante. A diferença de uma descartabilidade para outra está relacionada com sua espessura e seu método de fabricação.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',332.00),
      (48,'Bioview Asférica','Bioview','bioview-asferica.jpg','Lentes de Contato Bioview Asférica
     
    As lentes de contato Bioview Asférica são produzidas com material hidrofílico de alta performance que garante mais hidratação e conforto durante o uso.Utilizando o inovador e patenteado processo de Micro Molden System, essas lentes contam com desenho asférico que proporciona menos aberrações. Ideais para correção de miopia ou hipermetropia, essas lentes tem uma uma adaptação fácil, proporcionando muito mais conforto.
     

    Vantagens da Lente de Contato Bioview Asférica
     
    ✔ Material hidrofílico de alta performance que garante maior hidratação✔ Feitas com processo Micro Molden System✔ Lentes de fácil adaptação✔ Desenho asférico que reduz as aberrações
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',117.00),
      (49,'Bioview Tórica','Bioview','bioview-torica.jpg','Lentes de contato Bioview Tórica
     
    As lentes de contato Bioview Tórica são produzidas em material hidrofílico de alta performance pelo inovador e patenteado processo de Micro Moldem System. Essas lentes contam com o polímero Methafilcon A, que tem uma alta afinidade com a água, permitindo a hidratação ideal para proporcionar maior conforto.Feitas especialmente para quem tem astigmatismo, a Bioview Tórica possui o sistema back surface de toricidade interna que , junto com seu desenho asférico proporcionam a correção das aberrações visuais que oferecem uma visão mais nítida e traduzem a excelência desse produto.
     

    Vantagens da Lente de Contato Bioview Tórica
     
    ✔ Material hidrofílico de alta performance que garante maior hidratação✔ Feitas com processo Micro Molden System✔ Sistema back surface oferece estabilidade, facilitando a adaptação ✔ Desenho asférico que reduz as aberrações✔ Contam com o polímero Methafilcon A que permite mais hidratação.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',225.90),
      (110,'Estojo Pocket Advance - Verde','','estojo-pocket-advance-verde.jpg','A forma inteligente e compacta de carregar e proteger as lentes de contato o dia inteiro.

    Kit contém:

    - Um porta estojo com espelho
    - Um estojo Top Line com anel de vedação

    Tamanho ideal para ser carregado. Protege seu estojo e facilita a remoção e colocação das lentes em qualquer lugar.

    Cores disponíveis: 
    Verde, Rosa e Branco',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',45.90),
      (181,'Estojo Look Vision Azul Escuro','','estojo-look-vision-cor-azul-escuro.jpg','Estojo para Lentes de Contato GELATINOSA ou RÍGIDA.

    * Economia, proteção e segurança para as lentes de contato.

    O estojo foi desenhado com suaves estrias para que as lentes não colem no fundo e limitar a quantidade de solução a ser colocada, evitando desperdícios. Suas bordas arredondadas evitam que as lentes rasguem ou risquem ao serem retiradas do estojo.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.90),
      (50,'Proclear 1-Day','Proclear','lentes-de-contato-proclear-1-day-64064.jpg','Lentes de contato Proclear 1 Day
     
    O desempenho de uma lente de descarte diário e as vantagens de uma lente de alta hidratação.As lentes de contato Proclear 1 Day da CooperVision são lentes de descarte diário e por isso, oferecem alto nível de conforto, permanecendo sempre limpas e transparentes durante todo o uso.As lentes Proclear 1 Day são especialmente indicadas para quem sofre com olhos secos ou irritação em decorrência do uso de lentes. Por serem lentes descartáveis diárias também são opções práticas para quem não quer fazer a higienização de suas lentes todos os dias, já que essas lentes devem ser jogadas fora após o uso.A Proclear 1 Day possui design asférico, permitindo uma visão mais nítida e corrigindo com precisão a miopia ou hipermetropia. Essas lentes também permitem a livre circulação de oxigênio nos olhos, mantendo uma aparência saudável mesmo após 12 horas de uso.Além disso, a Proclear 1 Day conta com a exclusiva PC Technology™, que garante olhos sempre hidratados.
     

    Vantagens das lentes Proclear 1 Day
     
    ✔ Mantém 96% de seu conteúdo aquoso, mesmo após 12 horas de uso;✔ Mantêm o fluxo de oxigênio para ajudar a manter os seus olhos saudáveis;✔ Descarte diário: Lentes práticas e confortáveis do jeito que você precisa.✔ PC Technology™ garante mais hidratação para os olhos
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',127.00),
      (51,'Proclear XR - Graus Altos','Proclear','proclear-xr-graus-altos.jpg','Lentes de contato Proclear XR - Graus Altos
     
    As lentes de contato Proclear XR - Graus Altos são feitas de hidrogel e indicadas para quem precisa de correção de altos graus de miopia ou hipermetropia e sofre com olhos secos.
     
    Essas lentes mensais, fabricadas pela CooperVision oferecem conforto e visão perfeita durante todo o uso.
     
    As lentes Proclear XR contam com PC Technology™ da CooperVision que incorpora as moléculas de água ao material da lente, mantendo os olhos sempre hidratados.Além disso, essas lentes podem ser utilizadas por até 12h por dia mantendo os olhos saudáveis e o conforto do usuário.
     

    Vantagens da Lente de Contato Proclear XR - Graus Altos
     
    ✔ Mais conforto e visão nítida mesmo para quem tem altos graus✔ Possui PC Technology™ que incorpora moléculas de água ao material da lente✔ Perfeita para quem sofre com olhos secos
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',152.99),
      (52,'SofLens StarColors II','SofLens','lentes-de-contato-starcolors-2-com-grau-56947.jpg','Lentes de Contato Coloridas Soflens Starcolors II:
     
    As lentes de contato coloridas Soflens Starcolors II reproduzem os detalhes da íris com grande fidelidade, proporcionando uma aparência natural.Com descarte mensal, essas lentes coloridas fabricadas pela renomada Bausch &amp; Lomb, corrigem até 6 graus de miopia, enquanto deixam os olhos ainda mais bonitos.Disponível em 8 cores, a Soflens Starcolos II é produzida em Polymacon com desenho asférico, que oferece conforto e tem fácil adaptação.
     

     
    Vantagens da Lente de Contato Soflens Starcolors II
     
    ✔ Efeito cosmético natural com 8 opções de cores;✔ Facilidade de adaptação;✔ Descarte mensal, com grau.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Conheça as cores das lentes Soflens Starcolors II:
     
    Light Green, Dark Green, Blue Topaz, Dark Hazel, Green Amazon, Green Turquoise, Blue, Gray.Imagens meramente ilustrativas Atenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor. Diversos fatores podem interferir no resultado da cor e o efeito da lente, como a cor natural dos olhos, da pele e dos cabelos.
     
    CORES 

     

    Imagens meramente ilustrativasAtenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor. Diversos fatores podem interferir no resultado da cor e o efeito da lente, como a cor natural dos olhos, da pele e dos cabelos.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',32.90),
      (53,'Bioview 55 Tórica','Bioview','bioview-55-torica.jpg','Lentes de Contato Bioview 55 Tórica UV:
     
    A lente de contato Bioview 55 Tórica é uma excelente escolha para astigmatas.
    Até mesmo para aqueles que possuem um nível baixo de astigmatismo e aqueles que desejam melhorar a visão geral usando lentes de contato. 
    Fabricadas pela Central Oftalmica, feita em Hioxifilcon A, é uma lente de descarte mensal. Seu alto teor de hidratação proporciona um maior conforto e qualidade de visão até mesmo para quem sofre com olhos secos.
     
     

     
    Benefícios das Lentes de Contato Bioview 55 Tórica:
     
    ✔ Hidratação Equilibrada;
    ✔ O polimento Hioxifilcon A tem uma alta afinidade com a água, permitindo uma hidratação ideal para proporcionar maior conforto;
    ✔ Módulo de Elasticidade - com baixo módulo, as lentes são macias e suaves, o que garante ainda mais conforto e facilita o processo de adaptação em usuários iniciais;
    ✔ Ângulo de Umectação Devido a maior afinidade do material com a água. Isso minimiza os pontos secos e a incidência de depósitos de proteínas, melhorando a estabilidade do filme lacrimal e proporcionando muito mais conforto
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',302.00),
      (63,'Silidrogel Asférica','Silidrogel','silidrogel-asferica.jpg','Lentes de contato Silidrogel Asférica:
     
    As lentes de contato Silidrogel Asférica fazem parte de uma nova geração de lentes de contato de Silicone Hidrogel.Essas lentes para miopia e hipermetropia, fabricadas pela Central Oftálmica contam com hialuronato de sódio, que melhora a lubrificação, umidade, re-hidratação e são super-permeáveis.Seu material não iônico, evita os depósitos de proteínas, incluindo bactérias que aderem à superfície da lente, o que reduz significativamente a probabilidade de irritações e infecção. Essas lentes oferecem proteção contra os raios UVA/UVB, bloqueando os efeitos dos raios UV nos olhos.
     

    Vantagens da Lentes de Contato Silidrogel Asférica:
     
    ✔ Design com ajuste de curvatura para cada parâmetro oferecendo nitidez;✔ Bordas arredondadas que oferecem mais conforto;✔ Bloqueador UV, protegendo os olhos dos raios solares.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',222.00);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (54,'Biofinity XR Toric','Biofinity ','lentes-de-contato-biofinity-xr-toric-graus-altos-70188.jpg','ATENÇÃO: LENTE SOB ENCOMENDA
    Após a compra da lente, é necessário o envio da receita  e o exame de TOPOGRAFIA ou CERATOMETRIA. Caso Tenta alguma dificuldade no envio no ato da compra, por favor enviar pelo Fale Conosco.
     
    IMPORTANTE:
     
    O fabricante não aceita cancelamentos e devoluções para troca deste produto. Exceção somente para defeito de fabricação, comprovados após análise técnica.Em caso de dúvidas, entre em contato conosco.
     
    CENTRAL DE RELACIONAMENTO: 
     
    Atendimento de Segunda a Sexta-feira, das 9h às 17h
    Telefone: (11) 4873-2173
     
    —--
    Lentes de contato Biofinity XR Toric - Graus Altos:
     
    As lentes de contato Biofinity XR Toric no Brasil são feitas para pessoas com grau alto de astigmatismo. Essas lentes contam com tecnologias exclusivas das lentes Biofinity, permitindo que as pessoas com grau mais altos também contem com a praticidade e liberdade do uso de lentes de contato.Feitas em silicone hidrogel com sua famosa tecnologia patenteada pela CooperVision "Comfilcon A", essas lentes foram desenvolvidos especialmente para usuários com altas dioptrias e oferecem visão nítida para todas as distânciasA Biofinity XR Toric também é projetada com a  Tecnologia Aquaform®, que mantém os olhos hidratados e permite que uma grande quantidade de oxigênio chegue aos olhos, oferecendo conforto durante todo o dia.
     
     

     
    Vantagem das lentes de contato Biofinity XR Toric - Graus Altos:
     
    ✔ Oferece visão nítida para pessoas com altos graus de astigmatismo;✔ Conta com tecnologia Aquaform®, que permite alto fluxo de oxigênio e hidratação ao olho;✔ Feitas em silicone hidrogel altamente respirável, oferecendo conforto durante todo período de uso;✔ Olhos mais saudáveis, claros e sem irritações;✔ Excelente opção para substituir os óculos de grau com lentes grossas e pesadas.Experimente e comprove o conforto e qualidade das lentes BIOFINITY XR TORIC.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Assista Sobre As Lentes De Contato Biofinity
     

     
    Saiba mais sobre Lentes de Contato CooperVision
    Uma empresa que enxerga longe para você enxergar bem. Confira aqui.
     
    Dicas para quem usa lentes de contato
     
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',565.00),
      (55,'Dailies Aqua Comfort Plus Toric','Dailies','lentes-de-contato-dailies-aquacomfort-plus-toric-64269.jpg','Dailies Aqua Comfort Plus Toric
     
    As lentes de contato diárias Dailies AquaComfort Plus são uma opção saudável, refrescante e versátil para quem usa lentes de contato ocasionalmente!
     
    Perfeitas para quem leva uma vida dinâmica e não quer ter a necessidade de fazer a limpeza das lentes com solução. Essas lentes oferecem saúde para os olhos e muita praticidade tanto para quem usa todos os dias, como para situações pontuais.
     
    Sua tecnologia avançada oferece hidratação a cada piscada através da molécula exclusiva PVA. Liberando umidade dos dois lados da lente e mantendo o filme lacrimal estável, o que garante uma visão mais nítida e confortável.
     
    De fácil adaptação, a Dailies AquaComfort Plus são convenientes e segura, evitam o risco de confusão das lentes na troca e não acumulam resíduos.
     
     
     

     
     
    Vantagens da lente de contato DAILIES AquaComfort Plus
     
    ✔ Fáceis de usar – sem soluções de limpeza e desinfecção;
    ✔ Convenientes – sem necessidade de controle de datas para troca das lentes;
    ✔ Uma opção saudável – sem preocupação com o acúmulo de depósitos ao longo do tempo;
    ✔ Contam com a exclusiva molécula PVA que garante maior hidratação;
    ✔ Mantém o conforto e estabilidade durante todo o uso.
     
     
    Conteúdo da embalagem
    As lentes de contato coloridas DAILIES AquaComfort Plus vêm em embalagem com 30 lentes de mesmo grau, de descarte diário.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',169.90),
      (56,'Freshlook Colorblends','Freshlook ','freshlook-colorblends.jpg','Lentes de contato Freshlook Colorblends
     
    As lentes de contato coloridas Freshlook Colorblends são lentes cosméticas de descarte mensal para quem deseja mudar o visual.
    Podem ser usadas por pessoas sem necessidade de correção visual ou por quem tem miopia ou hipermetropia.
    Feitas com Phemfilcon A, essas lentes são macias e flexíveis para facilitar o ajuste e contam com alto teor de hidratação para manter os olhos mais saudáveis. A Freshlook Colorblends proporciona um visual natural que realça a cor dos olhos, e está disponível em 10 tons diferentes.
     
     
     

     
     
    Benefícios da Lente de Contato Freshlook Colorblends:
     
    ✔ Preço acessível para o uso ocasional e diário;
    ✔ Seu desenho imita as características da íris natural, atingindo um resultado totalmente natural;
    ✔ Oferece uma ampla variedade de cores naturais: Cinza, Verde, Azul e Pure Hazel;
    ✔ Proteção UV;
    ✔ Disponível com grau (Miopia e Hipermetropia);
    ✔ Conforto durante todo o dia;
    ✔ Facilidade de adaptação;
    ✔ Excelente conforto e manuseio;
    ✔ Lentes hidratadas o dia todo.
     
    Conheça as cores da Freshlook Colorblends
     
    Azul, Cinza, Verde, Pure Hazel, Azul Safira, Mel, Café, Azul Brilhante, Cinza Intenso e Turquesa
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     
    Atenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',205.90),
      (57,'Dailies Aqua Comfort Plus Multifocal','Dailies','dailies-aqua-comfort-plus-multifocal.jpg','Lentes de Contato Dailies AquaComfort Plus Multifocal
     
    As lentes de contato diárias Dailies AquaComfort Plus Multifocal são uma opção saudável, refrescante e versátil para quem usa lentes de contato ocasionalmente!
     
    Perfeitas para quem leva uma vida dinâmica e não quer ter a necessidade de fazer a limpeza das lentes com solução. Essas lentes oferecem saúde para os olhos e muita praticidade tanto para quem usa todos os dias, como para situações pontuais.
     
    Sua tecnologia avançada oferece hidratação a cada piscada através da molécula exclusiva PVA. Liberando umidade dos dois lados da lente e mantendo o filme lacrimal estável, o que garante uma visão mais nítida e confortável.
     
    De fácil adaptação, a Dailies AquaComfort Plus Multifocal são convenientes e segura, evitam o risco de confusão das lentes na troca e não acumulam resíduos.
     
     
     

     
     
    Vantagens da lente de contato DAILIES AquaComfort Plus Multifocal
     
    ✔ Fáceis de usar – sem soluções de limpeza e desinfecção;
    ✔ Convenientes – sem necessidade de controle de datas para troca das lentes;
    ✔ Uma opção saudável – sem preocupação com o acúmulo de depósitos ao longo do tempo;
    ✔ Contam com a exclusiva molécula PVA que garante maior hidratação;
    ✔ Mantém o conforto e estabilidade durante todo o uso.
    .
     
    Conteúdo da embalagem
    As lentes de contato coloridas DAILIES AquaComfort Plus vêm em embalagem com 30 lentes de mesmo grau, de descarte diário.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',207.00),
      (58,'Biofinity XR','Biofinity ','lentes-de-contato-biofinity-xr-graus-altos-70185.jpg','ATENÇÃO: LENTE SOB ENCOMENDA
    Após a compra da lente, é necessário o envio da receita  e o exame de TOPOGRAFIA ou CERATOMETRIA. Caso Tenta alguma dificuldade no envio no ato da compra, por favor enviar pelo Fale Conosco.
     
    IMPORTANTE:
     
    O fabricante não aceita cancelamentos e devoluções para troca deste produto. Exceção somente para defeito de fabricação, comprovados após análise técnica.Em caso de dúvidas, entre em contato conosco.
     
    CENTRAL DE RELACIONAMENTO: 
     
    Atendimento de Segunda a Sexta-feira, das 9h às 17h
    Telefone: (11) 4873-2173
     
    —--
    Lentes de contato Biofinity XR - Graus Altos:
     
    As lentes de Contato Biofinity  XR, da CooperVision,  são feitas para pessoas com grau alto de miopia ou hipermetropia. Sendo possível encontrar graus de até -20,00 de miopia e até +15,00 de hipermetropia.Com descarte mensal, essas lentes de silicone hidrogel contam com a tecnologia Aquaform® ultra-respirável da CooperVision, que permite que uma grande quantidade de oxigênio alcance os olhos. Isso mantém a lente hidratada durante todo o dia, mesmo para quem sofre com olhos secos.As lentes Biofinity XR oferecem visão nítida e confortável para quem tem graduações extremas. O processo de adaptação é fácil e essas lentes são indicadas até para uso prolongado em alguns casos.
     

    Vantagem das lentes de contato Biofinity XR - Graus Altos:
     
    ✔ Abrange graus muito altos;
    ✔ Conta com tecnologia Aquaform®, que permite alto fluxo de oxigênio o olho;
    ✔ Retêm umidade para maior conforto;
    ✔ Design proporciona maior estabilidade das lentes nos olhos.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Tecnologia Aquaform:
     
    Utilizando o mesmo material e desenho de lente que se encontra nas lentes esféricas Biofinity, a Biofinity XR proporciona o tipo de conforto* que pode ajudar a minimizar a necessidade de gotas.A Aquaform Technology, exclusiva da CooperVision, faz da Biofinity XR uma lente de contato naturalmente hidrofílica que retém a água dentro da lente minimizando a desidratação. Combina também módulo baixo e elevada transmissibilidade de oxigénio para maior conforto e respirabilidade.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',255.00),
      (59,'Navi 55 HD para Astigmatismo','Navi 55 HD para Astigmatismo','navi-55-hd-para-astigmatismo.jpg','Navi 55 HD para Astigmatismo&nbsp;As&nbsp;lentes de contato&nbsp;Navi 55 HD para Astigmatismo&nbsp;foram criadas com a mais alta tecnologia na produção de lentes de contato, o que a torna uma excelente opção para pessoas que precisam de correção óptica, e também querem maior&nbsp;liberdade de movimento em suas atividades, seja na prática de esportes, por hobbie ou de alta performance.&nbsp;O seu poder de correção óptica proporciona uma visão precisa, nítida e&nbsp;confortável em qualquer situação, para perto ou para longe,&nbsp;e atende pessoas de qualquer faixa etária, com&nbsp;miopia,&nbsp;hipermetropia e astigmatismo, sendo assim uma excelente alternativa&nbsp;ao uso de óculos.&nbsp;As&nbsp;lentes de contato&nbsp;Navi 55 HD para Astigmatismo&nbsp;são perfeitas para quem&nbsp;precisa&nbsp;da liberdade de movimento mas não abre mão do conforto e qualidade visual.&nbsp;Benefícios da Lente de Contato Navi HD 55 para Astigmatismo:&nbsp;? Tecnologia de alta performance? Correção de miopia, hipermetropia e astigmatismo? Conforto e qualidade visual para atividades do dia-a-dia ou prática de esportes&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;&nbsp;&nbsp;&nbsp;',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',127.00),
      (60,'Navi SiHy','Navi SiHy','navi-sihy.jpg','Lentes de Contato Navi SiHy&nbsp;A Natural Vision traz um novo nível de qualidade em lentes de contato para miopia e hipermetropia. Produzidas com a mais alta tecnologia,&nbsp;as lentes de contato NAVI SiHy foram projetadas para&nbsp;garantir precisão óptica e o máximo de conforto visual, mesmo com o uso prolongado das lentes.Feitas em&nbsp;silicone hidrogel&nbsp;super permeável, que otimizam a&nbsp;sua lubrificação natural, evitando pontos secos em sua superfície,&nbsp;proporcionando assim maior conforto aos olhos. Também possuem um desenho de superfície inteligente, muito mais lisa, com menor espessura central, bordas arredondadas e com&nbsp;bloqueio de UV, protegendo os olhos de raios nocivos.&nbsp;Agora com as&nbsp;lentes de contato Navi Sihy&nbsp;é possível usar lentes de contato o dia todo e em qualquer lugar, com toda a liberdade e conforto que você merece!&nbsp;Benefícios da Lente Navi SiHy:&nbsp;? Projetadas para&nbsp;garantir precisão óptica e o máximo de conforto visual? Proteção UV?&nbsp;Maior conforto devido às bordas arredondadas e superfície lisa&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;&nbsp;',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',179.00),
      (61,'Natural Vision Mensal','Natural Vision','lentes-de-contato-natural-vision-incolor-descarte-mensal-70211.jpg','Lentes de Contato Natural Vision Mensal:&nbsp;As lentes de contato Natural Vision são lentes gelatinosas, para Miopia e Hipermetropia.São lentes de de uso diário, com descarte mensal e possuem 55% de hidratação, proporcionando assim, maior conforto e sendo ideais para quem sofre de olhos secos no dia-a-dia.&nbsp;Benefícios das Lentes de Contato Natural Vision Mensal:&nbsp; Conforto e durabilidade; Alto teor de umidade prevenindo irritações; Com tinta de visibilidade para facilitar o manuseio da lente.&nbsp;Como Cuidar destas Lentes de Contato:- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',122.00),
      (62,'Biosoft Confort Tórica','Biosoft','biosoft-confort-torica.jpeg','Biosoft Comfort Tórica® 
     
    As lentes de contato Biosoft Comfort Tórica são lentes de descarte mensal, feitas em Silicone Hidrogel. Indicadas para usuários com necessidade de correção do astigmatismo associado ou não à miopia ou hipermetropia.
    Fabricadas pela Central Oftalmica, a Biosoft Comfort Tórica fornece conforto insuperável de alta duração, devido a sua tecnologia AQUAGRIP™. Essa tecnologia utiliza as propriedades de ligação da água para aumentar a sua resistência à desidratação e melhorar a umectação na superfície da lente. 
    Assim, conferindo as melhores propriedades hidrofílicas para o material da lente.
     

    Benefícios das Lentes Biosoft Comfort Tórica:
     
    ✔ Tecnologia AQUAGRIP™ de alta duração
    ✔ Proteção UV
    ✔ Resistência à desidratação e maior conforto
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',119.00),
      (64,'Proclear','Proclear','lentes-de-contato-proclear-56943.jpg','Lentes de contato Proclear
     
    As lentes de contato Proclear, fabricadas pela CooperVision, são lentes de descarte mensal, feitas para oferecer o máximo conforto e visão nítida.Essas lentes contam com a  PC Technology™ da CooperVision que incorpora moléculas de água no material da lente, evitando o ressecamento. Por isso, essa é uma ótima opção para quem sofre com olhos secos ou passa longas horas em ambientes com ar condicionado.As lentes de contato Proclear podem ser usadas por até 12 horas por dia, garantindo o conforto durante todo esse tempo. Com ótimo custo-benefício, essas lentes podem ser usadas por 30 dias consecutivos, se forem seguidas as instruções de limpeza e armazenamento. E, durante esse tempo, oferecem uma visão perfeita e saudável.
     

    Vantagens das Lentes de contato Proclear
     
    ✔ Visão nítida e confortável por até 12 horas por dia✔ Mantém os olhos hidratados, devido a alta retenção de umidade✔ Conta com a PC Technology™ que incorpora moléculas de água no material da lente✔ Ótimo custo-benefício✔ Excelentes lentes para pessoas que sofrem de olhos secos
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',112.99);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (65,'Clariti 1-Day Multifocal','Clariti','lentes-de-contato-clariti-1-day-multifocal-64296.jpg','Lentes de Contato Clariti 1 Day Multifocal:
     
    Experimente um novo estilo de vida.
    Fabricadas com silicone hidrogel, o material de lentes de contato mais avançado atualmente, as lentes de contato Clariti 1 day Multifocal deixam seus olhos respirarem melhor, mantendo-os mais saudáveis e confortáveis durante todo o dia.
    O descarte diário possibilita um menor acúmulo de depósitos (resíduos, impurezas) na superfície das lentes de contato e oferece mais praticidade, evitando preocupações com soluções de limpeza e estojos para lentes.
     

    Benefícios das Lentes de Contato Clariti 1 Day Multifocal:
     
    ✔ Lentes de contato de descarte diário em silicone hidrogel, naturalmente permeáveis ao oxigênio, para olhos mais saudáveis;✔ Alto conteúdo de água, proporcionando conforto ideal durante todo o dia;✔ Corrigem praticamente qualquer problema de visão, como miopia, hipermetropia, astigmatismo e presbiopia (vista cansada);✔ Proteção UVA e UVB*;✔ Excelente relação custo-benefício.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',245.00),
      (66,'Biosoft Tórica','Biosoft','lentes-de-contato-biosoft-torica-64276.jpg','Lentes de contato Biosoft Tórica
    As lentes de contato Biosoft Tórica, fabricadas pela Central Oftálmica, são indicadas para correção de astigmatismo e proporcionam qualidade e conforto para seus usuários.O processo de fabricação Micro Molden System e o material, LC-GEL, altamente hidrofílico, garantem hidratação durante todo o uso.Além disso, a tecnologia Advanced Optics e seu design Lo-Torque facilitam a adaptação das lentes para o diversos graus de astigmatismo.
     

    Vantagens da Lente de Contato Biosoft Tórica
     
    ✔ Alto poder de lubrificação✔ Fácil adaptação para diversos graus de astigmatismo✔ Excelente qualidade e conforto.✔ Ótimo custo-benefício
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Indicação
     
    Lentes de contato para correção de astigmatismoDescarte mensal, podendo ser usada durante todo o período que estiver acordado',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',99.00),
      (67,'Ultra Multifocal','Ultra','ultra-multifocal.jpg','Lentes de contato ULTRA® Multifocal
     
    As Lentes de contato ULTRA® Multifocal unem conforto, saúde ocular e alta qualidade visual para quem tem presbiopia. Fabricadas pela Bausch &amp; Lomb, essas lentes contam alta transmissibilidade de oxigênio que oferece visão confortável para o usuário. O conforto também é garantido pela tecnologia MoistureSeal™, que proporciona uma superfície hidrofílica e mantém 95% de hidratação por até 16 horas de uso.        As lentes ULTRA® Multifocal também contam com a Tecnologia 3-Zone Progressive Design, que possibilita uma transição natural da visão de perto e de longe, devido ao desenho Centro-Perto.Essas lentes de descarte mensal oferecem nitidez para distância próxima, intermediárias e longe em diferentes situações.
     

    Vantagens da Lente de Contato ULTRA® Multifocal
     
    ✔ Hidratação por até 16 horas por dia;✔ Fácil adaptação;✔ Com tecnologia MoistureSeal™ que mantém 95% da umidade dos olhos;✔ Alta oxigenação mantendo o conforto visual;✔ Tecnologia 3-Zone Progressive Design que possibilita transição natural entre distâncias.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',395.00),
      (68,'Biosoft 1-Day - 10 unidades','Biosoft','biosoft-1-day-10-unidades.jpg','Lentes de Contato BioSoft 1-Day:
     
    A lente de contato Biosoft 1-Day é a primeira lente de contato descartável diária biocompatível com a tecnologia AQUAGRIP™.
    Ela é uma lente extremamente confortável e sua tecnologia mantém o olho úmido até o final do dia, perdendo menos de 1% de umidade após 8 horas de uso. Sua superfície é não-iônica, ou seja, rejeita o acúmulo de proteínas e bactérias.
    Cada lente Biosoft 1-Day é para uso único e deve ser descartada diariamente após o uso. Exclui a necessidade de produtos para higienização.
     
     

    Benefícios das Lentes Biosoft 1-Day: 
     








    ✔ Conforto sedoso e duradouro✔ Componentes livres de alergia✔ Design asférico avançado✔ Saúde ocular melhorada✔ Tecnologia verde na indústria (80% menos plástico, 70% menos uso de água)✔ Lente mais higiênica (sem contato humano durante todo o processo de fabricação)















     






    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',62.90),
      (111,'Natural Vision Beauty Mensal','Natural Vision','lentes-de-contato-natural-vision-color-beauty-descarte-mensal-com-grau-70214.jpg','Lentes de Contato Natural Vision Beauty Mensal - Com Grau&nbsp;Como as pedras preciosas, as lentes de contato Natural Vision Beauty Mensal foi desenvolvida para deixar os seus olhos muito mais belos e encantadores!&nbsp;Com 5 opções de cores, as lentes de contato da linha Beauty possuem um desenho sem bordas com tonalidades claras.&nbsp;As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos a aquelas que necessitam de correção visual.&nbsp;Benefícios das lentes Natural Vision Beauty Mensal:&nbsp;? Lentes coloridas com aspecto natural;? Melhor custo benefício com descarte mensal;? Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',89.90),
      (69,'Solflex Toric','Solflex','solflex-toric.jpg','Lentes de Contato Solflex Toric:
     
    As lentes de contato Solflex Toric são lentes para correção de astigmatismo, de uso mensal.
    Fabricadas pela Solótica, são lentes feitas em Silicone Hidrogel e possuem um desenho que apresenta um perfil delta, para estabilizar a lente através do mecanismo normal de piscar o olho.
    As lentes de contato Solflex Toric possuem a Tecnologia AQUAGRIP que ajuda na transferência de oxigênio para a córnea, visão mais nítida, melhor conforto ao final do dia, além de superior saúde ocular. Garantindo assim, um uso diário com muito mais conforto.
     

    Benefícios das Lentes de Contato Solflex Toric:
     
    ✔ Desenho exclusivo;
    ✔ Estabilização Dinâmica;
    ✔ Excelente desempenho em visão e conforto;
    ✔ Conforto durante o dia todo com a Tecnologia AQUAGRIP.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',202.90),
      (70,'Silidrogel Tórica','Silidrogel','silidrogel-torica.jpg','Silidrogel Tórica
     
    As lentes de contato Silicone Hidrogel Tórica, lentes de descarte mensal. Indicadas para correção de Miopia e Hipermetropia.
    Fabricadas pela Central Oftalmica, são de uma nova geração com hialuronato de sódio, que melhora a lubrificação, umidade e re-hidrata.
    O material não iônico e a superfície umectada das lentes Silidrogel evitam os depósitos de proteínas, incluindo bactérias que aderem à superfície da lente, reduzindo assim, significativamente, a probabilidade de infecção.
     

    Benefícios das Lentes de Contato Silidrogel Tórica:
     
    ✔ Filtro UVA e UVB;
    ✔ Desenho inteligente, um ajuste de curvatura para cada parâmetro;
    ✔ Módulo baixo, aumenta o conforto e diminui o desgaste;
    ✔ Desenho de estabilização
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',332.90),
      (71,'Medisoft 55 UV','Medisoft','lentes-de-contato-medisoft-55uv-56925.jpg','Lentes de contato Medisoft 55UV:
     
    As lentes de contato Medisoft 55UV são indicadas para pessoas que sofrem com miopia ou hipermetropia. Feita com desenho asférico, essas lentes são capazes de neutralizar aberrações visuais, proporcionando uma visão de qualidade superior mesmo em lugares com pouca luz.
     
    A Medisoft 55UV é uma lente de descarte mensal, que conta com 55% de hidratação, oferecendo conforto durante todo período de uso. Seu design resulta em uma superfície estável sobre a córnea,  possibilitando uma cobertura regular e ajudando a focalizar os raios de luz na retina.
     
     

     
    Benefícios das lentes Medisoft 55 UV:
     
    ✔ 55% de hidratação;✔ Seu desenho asférico neutraliza aberrações;✔ Oferece visão estável e mais confortocontato.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',192.00),
      (72,'Hidrocor RIO','Hidrocor','lentes-de-contato-hidrocor-rio.jpg','

    Hidrocor RIO - com grau
     
    Já pensou em mudar a cor dos seus olhos e realçar sua beleza? A Solótica pensou por você.
     
    As lentes Hidrocor Rio apresentam cores muito suaves que se mesclam com a cor natural dos olhos causando efeitos impressionantes. Cores baseadas nas belas paisagens e praias exuberantes do estado do Rio de Janeiro. Além disso, são oferecidas em diferentes graus para correção de miopia ou hipermetropia, combinados ou não com baixo astigmatismo. A troca do produto deve ser feita em até 1 ano. 
     
    Conheça a linha Hidrocor completa aqui.
     
     
     

     
     
    Características e Benefícios:
     
    ✔ Saúde ocular, devido à resistência ao acúmulo de proteínas;
    ✔ Excelente conforto e manuseio;
    ✔ Proporciona visão nítida, clara e natural;
    ✔ Facilidade de adaptação;
    ✔ Hidratação e lubrificação;
    ✔ Ampla variedade de cores;
     
    Indicação
     
    Lentes de contato gelatinosas cosméticas, indicadas para estética e com a opção de encomenda para a correção de Miopia ou Hipermetropia. Não corrigem astigmatismo. 
    Embalagem: O valor anunciado refere-se a uma lente gelatinosa colorida levemente rajadas e com contorno da íris e da pupila. Para adquirir 1 PAR, selecione a prescrição indicada para seu Olho Direito (OD) e seu Olho Esquerdo (OE). 
     
    Cores
    Disponível nas cores: Búzios, Copacabana, Ipanema e Parati.



     
    Atenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor.
    Prazo de validade:O prazo das lentes de contato lacradas é maior porque elas estão esterilizadas pelo processo de autoclave a 120 graus Celsius, livre de qualquer contaminação.A validade da lente começa a partir da abertura do lacre, pois o produto deixa de ser estéril, tendo influências de vários fatores para sua contaminação, como: proteínas da lágrima, fuligem, poeira, células epiteliais que se renovam, entre outros.O período de descartabilidade (troca anual ou mensal) deve ser respeitado de acordo com a orientação do fabricante. A diferença de uma descartabilidade para outra está relacionada com sua espessura e seu método de fabricação.
     
     
    Dicas para quem usa lentes de contato


    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',127.99),
      (73,'Natural Vision Anual','Natural Vision','lentes-de-contato-natural-vision-incolor-descarte-anual-70210.jpg','Lentes de contato Natural Vision Anual:&nbsp;As lentes de contato Natural Vision Anual são lentes incolores de qualidade fabricadas com tecnologia para oferecer saúde e acuidade visual.Feitas para usuários que têm miopia (dificuldade para ver de longe) ou himertropia (dificuldade para ver de perto), essas lentes oferecem qualidade e visão nítida. Além disso, essas lentes contam com proteção contra os raios ultravioletas, emitidos pela luz do sol.As lentes de contato Natural Vision Anual são lentes gelatinosas, oferecendo conforto e visão nítida.&nbsp;&nbsp;Vantagens da&nbsp;Lentes de Contato Natural Vision Anual:&nbsp; 38% de hidratação para maior conforto; Conta com proteção UV; Descarte anual.&nbsp;Como Cuidar destas Lentes de Contato:- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',87.90);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (84,'Optogel OP60','Optogel','optogel-op60.jpg','Lentes de Contato Optogel OP60:
     
    As lentes de contato Optogel OP60 são lentes de contato gelatinosas que você pode usar no seu dia-a-dia com conforto e qualidade visual.
     
    Por possuir 55% de hidratação, contém grande capacidade de retenção de conteúdo aquoso, garantindo o uso confortável e seguro por períodos mais longos.
     
    É uma lente indicada para uso flexível com 5 curvas de adaptação que garantem excelente acuidade.Especial para usuários que buscam qualidade de visão com o melhor custo x benefício do mercado.
     
     

     
    Benefícios da Lente de Contato Optogel OP60:
     
    ✔ Saúde ocular, devido à resistência ao acúmulo de proteínas
    ✔ Excelente conforto e manuseio
    ✔ Proporciona visão nítida, clara e natural
    ✔ Facilidade de adaptação
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',149.90),
      (74,'Lunare Mensal - com grau','Lunare','lentes-de-contato-lunare-mensal-com-grau-62730.jpg','
    Lentes de contato Lunare Mensal com grau:
     
    As lentes de contato Lunare Mensal com grau são indicadas para a correção visual de pessoas com miopia e hipermetropia, enquanto oferecem uma nova cor para os olhos desses usuários.
     
    Com a exclusiva tecnologia TKI (Tri-Kolor Inside), essas lentes de descarte mensal são produzidas com três camadas internas de pigmentação. O que proporciona conforto superior e aspecto mais natural.
     
    O conforto dessas lentes também se deve ao fato da pigmentação ser absorvida pelas lentes,  evitando o atrito entre a lente e a pálpebra.
     
     

     
    Vantagens da Lente de Contato Lunare Mensal com grau:
     
    ✔ Correção visual com efeito cosmético natural✔ Facilidade de adaptação;✔ Descarte mensal, com grau.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Tecnologia Tki
     
    Com a inovadora tecnologia TKI (Tri-Kolor Inside), a pigmentação das lentes Lunare é feita dentro da lente, ao contrário de outras lentes coloridas, em que o pigmento é colocado na superfície.
     
    Atenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor. Diversos fatores podem interferir no resultado da cor e o efeito da lente, como a cor natural dos olhos, da pele e dos cabelos.

     

    Conheça Mais Sobre As Lentes Lunare







     
     
    Confira as dicas Bausch + Lomb sobre Manuseio De Lentes de Contato




    Saiba mais sobre Lentes de Contato Bausch + Lomb
    Tradição que inspira liberdade. Confira aqui.
    Atenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor.
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',52.00),
      (75,'Clariti 1-Day Toric','Clariti','lentes-de-contato-clariti-1-day-torica-64294.jpg','Lentes de contato Clariti 1 day:
     
    Experimente um novo estilo de vida.
     
    Fabricadas com silicone hidrogel, o material de lentes de contato mais avançado atualmente, as lentes de contato Clariti 1 day Toric deixam seus olhos respirarem melhor, mantendo-os mais saudáveis e confortáveis durante todo o dia.
     
    O descarte diário possibilita um menor acúmulo de depósitos (resíduos, impurezas) na superfície das lentes de contato e oferece mais praticidade, evitando preocupações com soluções de limpeza e estojos para lentes.
     
    As lentes Clariti 1 day contam com a tecnologia WetLoc que por reter água na superfície da lente, mantém os olhos hidratados durante todo o dia.
     
    Além disso, essas lentes ainda bloqueiam os raios ultravioletas, protegendo os olhos da exposição solar.
     
    
    Vantagens da Lente de Contato Air Optix Aqua Night &amp; Day
     
    ✔ Descarte diário, mais praticidade para o dia a dia✔ Sensação de lentes novas todos os dias✔ Lentes ultra-respiráveis, que transmite mais oxigênio para manter os olhos saudáveis✔ Proteção UV✔ Tecnologia WetLoc que mantém a hidratação das lentes durante todo o dia, garantindo o conforto✔ Feitas em silicone hidrogel, naturalmente permeáveis ao oxigênio, para olhos mais saudáveis✔ Excelente relação custo-benefício
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',177.00),
      (76,'Hidrosoft','Hidrosoft','lentes-de-contato-hidrosoft-56938.jpg','Lentes de contato Hidrosoft:
     
    As lentes de contato gelatinosas Hidrosoft são opções de descarte anual,  indicadas para correção de Miopia e Hipermetropia.Essas lentes  proporcionam uma excelente lubrificação e hidratação por causa do Glicerol, que garante o conforto visual. Por conta disso, essas lentes são ótimas para serem usadas em ambientes secos, com ar condicionado, por exemplo.De fácil adaptação, as lentes de contato Hidrosoft, garantem visão nítida e conforto durante todos os dias, desde que seja feita a limpeza e armazenagem correta.
     
     

     
    Vantagens da lentes de contato Hidrosoft
     
    ✔ Feitas com Glicero, que garante a hidratação e estabilidade;✔ Oferece conforto e acuidade visual;✔ Ideal para quem sofre com olhos secos.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     
    Prazo de validade:
     
    O prazo das lentes de contato lacradas é maior porque elas estão esterilizadas pelo processo de autoclave a 120 graus Celsius, livre de qualquer contaminação.A validade da lente começa a partir da abertura do lacre, pois o produto deixa de ser estéril, tendo influências de vários fatores para sua contaminação, como: proteínas da lágrima, fuligem, poeira, células epiteliais que se renovam, entre outros.O período de descartabilidade (troca anual ou mensal) deve ser respeitado de acordo com a orientação do fabricante. A diferença de uma descartabilidade para outra está relacionada com sua espessura e seu método de fabricação. ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',119.00),
      (77,'Kit Hidrocor','Hidrocor','kit-hidrocor-sem-grau.jpg','Lentes de contato Kit Hidrocor - sem grau
     
    Quer mudar a cor dos seus olhos e realçar sua beleza? As lentes de contato coloridas Hidrocor apresentam cores muito suaves que se mesclam com a cor natural dos olhos causando efeitos impressionantes. Essas lentes gelatinosas com descarte anual podem ser usadas por quem não precisa de correção visual.Com cores diferenciadas e aspecto natural, as lentes de contato coloridas do Kit Hidrocor são ideias para uso diário ou pontual, apenas em ocasiões especiais.Caso necessite de correção, você pode conhecer a linha Hidrocor completa aqui.
     

     
    Vantagens da Lente de Contato Kit Hidrocor - sem grau
     
    ✔ Saúde ocular, devido à resistência ao acúmulo de proteínas;✔ Excelente conforto e manuseio;✔ Proporciona visão nítida, clara e natural;✔ Facilidade de adaptação;✔ Hidratação e lubrificação;✔ Ampla variedade de cores.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Conheça as cores das lentes do Kit Hidrocor sem grau
     
    De fácil adaptação, essas lentes estão disponíveis em diversas cores.Mel, Ocre, Grafite,  mbar, Avelã, Ice, Topázio, Quartzo e Cristal, Jade, Safira e Aquamarine.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',255.90),
      (78,'Precision1','Precision1','precision1.jpg','Lentes de Contato Precision1 ®:
     
    Precision1 ® são lentes de contato diárias de alta qualidade. As lentes apresentam a inovadora Tecnologia SmartSurface®, com uma fina camada de humidade que permite que o conteúdo de água atinja 80% da superfície da lente para uma hidratação máxima. Por manter a humidade ao longo do dia, os seus olhos permanecerão confortáveis durante o dia todo.
     
    Fabricadas pela Alcon, com um silicone hidrogel moderno, Verofilcon A, Precision1 ® oferece uma visão excepcionalmente nítida e saudável. Além disso, possui filtro de bloqueio UV, que garante um nível extra de proteção contra os raios solares UVA e UVB nocivos. A tonalidade azulada das bordas permite uma aplicação fácil e simples, mesmo para quem usa pela primeira vez.
     
    Viva sua melhor vida com as lentes de contato descartáveis diárias Precision1®. Fáceis de usar e fáceis de amar!
     

    Vantagens da Lentes de Contato Precision1 ®:
     
    ✔ A tecnologia exclusiva SmartSurface® mantém a umidade na superfície da lente onde ela é mais importante, o que garante muito conforto;
    ✔ 9 em cada 10 usuários dizem que as lentes de contato Precision1® são fáceis de manusear;
    ✔ O Bloqueio de UV Classe 1 oferece o mais alto nível de proteção UV disponível em lentes descartáveis diárias.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',210.00),
      (79,'Natural Vision Glamour Anual','Natural Vision','lentes-de-contato-natural-vision-color-glamour-descarte-anual-plana-70217.jpg','Lentes de contato Natural Vision Glamour Anual - Com Grau:&nbsp;As lentes de contato coloridas Natural Vision Glamour Anual com grau atendem pessoas que tem miopia ou hipermetropia e desejam um novo visual.Realçando os olhos e oferecendo aspecto natural, essas lentes podem ser utilizadas durante 365 dias, tendo um excelente custo benefício.A Natural Vision Glamour Anual com grau é uma lente gelatinosa de alta qualidade que possibilita uma fácil adaptação, além de oferecer conforto durante o uso.Com 6 opções de cores disponíveis, a linha Glamour da Natural Vision realça os olhos de forma natural. As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos a aquelas que necessitam de correção visual.&nbsp;&nbsp;&nbsp;Vantagens da&nbsp;Lentes de Contato Coloridas Natural Vision Glamour Anual - Com Grau:&nbsp; Lentes coloridas com aspecto natural; Melhor custo benefício com descarte anual; Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',85.00),
      (80,'Optycolor Magic Top HD','Optycolor','optycolor-magic-top-hd.jpg','Lentes de Contato Optycolor Magic Top HD:
     
    As lentes Optycolor Magic Top HD são lentes de contato gelatinosas coloridas de grande naturalidade que mesclam com a cor dos olhos, realçando seu olhar e mudando o seu visual.
     
    A Magic Top HD está disponível em 7 cores: azul, verde, mel, mel ocre, cinza, lavanda e turquesa, além de corrigir miopias e hipermetropias.
     
    Especial para usuários que querem evidenciar sua beleza, criando novos estilos.
     
     

     
    Benefícios da lente Optycolor Magic Top HD:
     
    ✔ Lentes coloridas com grau que corrigem Miopia e Hipermetropia;✔ Facilidade de adaptação;✔ Excelente conforto e manuseio;✔ Lentes hidratadas o dia todo;✔ Mudam a aparência com naturalidade.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',107.00),
      (81,'Kit Lunare Anual - sem grau','Lunare','lentes-de-contato-lunare-anual-sem-grau-62728.jpg','
    Lentes de contato Lunare Anual sem grau:
     
    As lentes de contato Lunare Anual sem grau são produzidas com a exclusiva tecnologia TKI (Tri-Kolor Inside) que tem três camadas internas de pigmentação, proporcionando conforto superior e aspecto mais natural.
    Ideal para uso cosmético, essas lentes não corrigem problemas de visão e são ideais para quem deseja mudar o visual de forma prática e natural.
    A tecnologia TKI é inovadora ao fazer com que a pigmentação seja absorvida pelas lentes, evitando o atrito entre a lente e a pálpebra, oferecendo conforto durante todo o uso.
    Com excelente custo benefício, essas lentes de contato coloridas são de descarte anual, podendo ser usadas por até 365, desde que sejam higienizadas corretamente.
     

    Benefícios da Lente de Contato Lunare Anual sem grau:
     
    ✔ Efeito cosmético natural com 10 opções de cores;
    ✔ Facilidade de adaptação;✔ Descarte anual, sem grau;✔ Tecnologia TKI (Tri-Kolor Inside), com pigmentação dentro da lente, evitando atrito;
     
    Conheça as cores da Lunare Anual sem grau
     
    Green, Dark Green, Blue, Light Blue, Gray, Stylish Gray*, Blue Gray, Hazel, Stylish Brown* e Violet**Disponíveis apenas no descarte anual.
     
    Atenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor. Diversos fatores podem interferir no resultado da cor e o efeito da lente, como a cor natural dos olhos, da pele e dos cabelos.
     
    Conheça Mais Sobre As Lentes Lunare
     

     
     
    Veja dicas de maquiagem com as lentes de contato Lunare abaixo:
     
    Lentes de Contato Coloridas - Dicas de Make Stylish Gray - e-lens
    Lentes de Contato Coloridas - Dicas de Make Light Blue - e-lens
     
    Saiba mais sobre Lentes de Contato Bausch + Lomb
    Tradição que inspira liberdade. Confira aqui.
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',192.00),
      (82,'Aquarella','Aquarella','aquarella.jpg','Lentes de Contato Aquarella&nbsp;Mais recente lançamento da Solótica, as lentes de contato coloridas Aquarella são lentes de uso trimestral que refletem a tradição da fabricante em produzir lentes com alta tecnologia, que oferecem uma aparência natural e saúde para a visão.Inspiradas nas paisagens vibrantes do Brasil, a Aquarella traz 6 novas cores — de verdes profundos a tons mais claros de cinza e avelã — para você experimentar este ritmo da beleza brasileira.Sem anel limbal, estas lentes de contato coloridas deixam um visual natural nos olhos e ainda garantem conforto e visão cristalina durante o uso.&nbsp;&nbsp;&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;CoresAmazonia Green: um verde profundo que tem o nome da mais rica floresta tropical.Beleza Gray: na cor cinza, esta é uma lente versátil que deixa seu visual mais bonito.Arara Blue: inspirada num dos pássaros mais lindos, esta lente te deixa com a cor tão sonhada.Bossa Nova Gray: inspirado no estilo musical criado nos anos 50, este autêntico tom de cinza confere personalidadeDandara Hazel: essa cor única foi inspirada na herança cultural brasileiraCambuci Green: inspirado na árvore Cambuci, esta cor combina vários tons de verde pra criar uma versão sem igual.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',129.90);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (83,'Kit Natural Colors','Natural Colors','kit-natural-colors-sem-grau.jpg','Lentes de contato Kit Natural Colors - sem grau:
     
    As lentes de contato coloridas Natural Colors sem grau são fabricadas pela Solótica para mudar o visual dos seus olhos de forma natural.
    Com cores suaves e bonitas, essas lentes foram projetadas com um anel central pigmentado de forma difusa para transformar seu olhar de forma discreta e natural.A Natural Colors é feita com GLICEROL, que garante uma maior hidratação e mantem a estabilidade dos parâmetros. Essas lentes são indicadas para que tem baixo índice de filme lacrimal e sofre com os olhos secos. Conheça a linha Natural Colors completa aqui.
     

    Vantagens das lentes de contato Kit Natural Colors - sem grau:
     
    ✔ Tecnologia de última geração produzida pela Solótica;✔ Conforto aliado a acuidade visual;✔ Lente com GLICEROL, que garante a hidratação e mantém a estabilidade dos parâmetros dimensionais;✔ Total conforto durante todo o período de uso.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',265.00),
      (85,'Kit Optima Natural Look','Optima','lentes-de-contato-natural-look-sem-grau-57482.jpg','
    Lentes de contato coloridas Kit Optima Natural Look - sem Grau:

     
    As lentes de contato Optima Natural Look sem grau são lentes coloridas de descarte anual que reproduzem os detalhes da íris com grande fidelidade, proporcionando uma aparência natural para os olhos.
    Nessa versão sem grau, as lentes Optima Natural Look são ideais para quem não precisa de correção visual, mas deseja mudar o visual de forma natural. Você pode escolher entre 10 cores.
    Com descarte anual, essas lentes coloridas oferecem ótimo custo benefício, exigindo apenas os cuidados básicos de higienização e podem ser usadas durante 365 dias.
    Feitas com material de alta qualidade e com desenho esférico, que oferecem maior conforto e facilidade de adaptação.
     
     

     
    Vantagens da Lentes de Contato Optima Natural Look - sem Grau:
     
    ✔ Efeito cosmético natural com 10 opções de cores;✔ Facilidade de adaptação;✔ Conforto durante todo período de uso.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Conheça todas as cores da Optima Natural Look sem grau:
     
    Light Green, Dark Green, Blue Topaz, Dark Hazel, Green Amazon, Green Turquoise, Blue, Gray, Hazel e Green Ocean.
     
     
    Imagens meramente ilustrativasAtenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor. Diversos fatores podem interferir no resultado da cor e no efeito da lente, como a cor natural dos olhos, da pele e dos cabelos.
     


    Imagens meramente ilustrativasAtenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor. Diversos fatores podem interferir no resultado da cor e o efeito da lente, como a cor natural dos olhos, da pele e dos cabelos.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',132.00),
      (86,'Solflex Natural Colors','Solflex','lentes-de-contato-solflex-natural-colors.jpg','Lentes de contato Solflex Natural Colors:
     
    As lentes de contato Solflex Natural Colors é uma excelente opção de lente colorida para quem tem miopia. Além da beleza das cores, a mais alta tecnologia utilizada nessas lentes resulta em maior qualidade.
     
    Utilizando o  processo de coloração tipo ""Sandwich"", onde as cores não tocam os olhos do usuário, as lentes Solflex Natural Colors oferecem conforto durante todo o tempo de uso.
     
    Estrutura tipo ""Sandwich""Pensando em ampliar a segurança e saúde ocular dos usuários, os pigmentos usados nas cores são prensados em duas camadas de material base, impedindo seu contato direto com a córnea e as pálpebras. Ao evitar o atrito da pigmentação com a córnea, essa lente oferece maior conforto visual.
     

     
    Vantagens da Lente de Contato Solflex Natural Colors:
     
    ✔ 38% de hidratação para maior conforto visual✔ Estrutura ""Sandwich"" que evita o contato da pigmentação com a córnea
     
    Conheça as cores das lentes de contato Solflex Natural Colors
     
    Mel, Ocre, Quartzo, Esmeralda, Cristal, Topázio e Verde.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',145.00),
      (87,'Biosoft 55A Asférica','Biosoft','biosoft-55a-asferica.jpeg','Lentes de contato Biosoft 55A Asférica:
     
    Indicadas para quem tem miopia ou hipermetropia, as lentes de contato Biosoft 55A Asférica são de uso mensal e oferecem conforto durante todo o dia e tem fácil adaptação.
    Essas lentes possuem boa oxigenação e mais de 55% de hidratação, o que as deixam mais suaves nos olhos, promovendo mais saúde para a sua visão.
    A Biosoft Asférica ainda conta com tecnologia que as tornam mais resistentes ao acúmulo de resíduos, mantendo a visão nítida durante todo o período de uso.
     

    Vantagens da Lente de Contato Biosoft Asférica:
     
    ✔ Material hidrofílico de alta performance, garantindo mais hidratação e conforto✔ Passa pelo processo Micro Molden System✔ Adaptação fácil com segurança e conforto✔ Tecnologia que impede acúmulo de impurezas✔ Bom custo benefício
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     
    Prazo de validade:O prazo das lentes de contato lacradas é maior porque elas estão esterilizadas pelo processo de autoclave a 120 graus Celsius, livre de qualquer contaminação.A validade da lente começa a partir da abertura do lacre, pois o produto deixa de ser estéril, tendo influências de vários fatores para sua contaminação, como: proteínas da lágrima, fuligem, poeira, células epiteliais que se renovam, entre outros.O período de descartabilidade (troca anual ou mensal) deve ser respeitado de acordo com a orientação do fabricante. A diferença de uma descartabilidade para outra está relacionada com sua espessura e seu método de fabricação.Dicas para quem usa lentes de contato(manter o vídeo)',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',77.90),
      (88,'Optogel Tórica','Optogel','optogel-torica.jpg','Lentes de contato Optogel Tórica:
     
    _____________________________
     
    ATENÇÃO: LENTE SOB ENCOMENDA
    Após a compra da lente, é necessário o envio da receita  e o exame de TOPOGRAFIA ou CERATOMETRIA. Caso Tenta alguma dificuldade no envio no ato da compra, por favor enviar pelo Fale Conosco.
     
    IMPORTANTE:
     
    O fabricante não aceita cancelamentos e devoluções para troca deste produto. Exceção somente para defeito de fabricação, comprovados após análise técnica.Em caso de dúvidas, entre em contato conosco.
     
    CENTRAL DE RELACIONAMENTO: 
     
    Atendimento de Segunda a Sexta-feira, das 9h às 17h(Exceto Feriados)
    Telefone: (11) 4873-2173
     
    _____________________________
     
     
    As lentes de contato Optogel Tórica são lentes de contato gelatinosas indicadas para astigmatismo.
    Indicadas para usuários que buscam conforto aliados a uma qualidade visual superior.
    As lentes de contato gelatinosas são feitas com polímeros hidrofílicos, com textura suave semelhante ao gel, que permite passagem do oxigênio através da lente e preservação da superfície ocular. Suas propriedades mantém a superfície do olho saudável, permitindo maior conforto na relação lente-córnea. As lentes GEL são recomendadas para atividades esportivas.
     
     

     
    Benefícios da lente Optogel Tórica:
     
    ✔ Proteção UV
    ✔ 55% de hidratação proporcionando maior conforto
    ✔ Textura suave que permite oxigenação na superfície ocular
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    A Optogel Tórica atende do grau;

    -15.00 a +12.00 com cilindro até -5.00

    Observação: Se o seu grau for de 0.00 a 20.00 (+/-) com o cilindro de -5.25 a -10.00, CLIQUE AQUI!',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',385.00),
      (89,'Biosoft Color','Biosoft','biosoft-color.jpg','BioSoft Color
     
    A Biosoft Color é fabricada com material de polymacon clássico, que é amplamente reconhecido por sua durabilidade, confiabilidade e desempenho em todos os ambientes.
     
    Os benefícios incluem movimento ideal, conforto aprimorado e olhos incrivelmente bonitos. A borda mais fina proporciona maior conforto.
     
    As lentes de contato Biosoft Color oferecem design especial Multi Curve oferece conforto incomparável, perfil de borda fina, maior centralização e ótica premium.
     
    Visual autêntico com conforto incomparável.
     
     

     
    Benefícios da lente Biosft Color:
     
    ✔ Cores naturais e vibrantes que se integram ao seu visual;
    ✔ Proteção UV.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',69.00),
      (90,'Kit SofLens StarColors II','SofLens','lentes-de-contato-starcolors-2-sem-grau-57489.jpg','Lentes de Contato SofLens StarColors II - Sem grau:
     
    As lentes de contato coloridas Soflens Starcolors II reproduzem os detalhes da íris com grande fidelidade, proporcionando uma aparência natural.
     
    Disponível em 8 cores, a Soflens Starcolos II é produzida em Polymacon com desenho asférico, que oferece conforto e tem fácil adaptação.
     
    
    Benefícios da lente SofLens StarColors II:
     
    ✔ Efeito cosmético mais natural ✔ 8 opções de cores ✔ Assepsia simplificada ✔ Fácil adaptação 
     
     


     
    Imagens meramente ilustrativasAtenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor. Diversos fatores podem interferir no resultado da cor e o efeito da lente, como a cor natural dos olhos, da pele e dos cabelos.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',65.00),
      (91,'Natural Colors Tórica','Natural Colors','novas-lentes-de-contato-natural-colors-torica-para-astigmatismo-57496.jpg','ATENÇÃO: Lente sob encomenda 
    Após a compra da lente , é necessário o envio da receita  e o exame de topografia ou ceratometria. Caso Tenta alguma dificuldade no envio no ato da compra, por favor enviar pelo Fale Conosco.Atenção: o fabricante não aceita cancelamentos e devoluções para troca deste produto. A exceção é válida somente para casos de defeito de fabricação, comprovados após análise técnica.
    Atenção: Devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor.
     
    Lentes de Contato Natural Colors Tórica:
     
    Já pensou em mudar a cor dos seus olhos e realçar sua beleza? A Solótica pensou por você.
     
    As lentes de contato coloridas Natural Colors foram projetadas para transformar a cor do seu olhar, de forma absolutamente discreta e natural. Isso é possível porque elas possuem contorno limbal absolutamente discreto e anel central pigmentado de forma difusa.
     
    Ideais para quem tem astigmatismo e para quem não tem necessidade de correção visual.
     
    As lentes de contato Natural Colors devem ser trocadas anualmente e oferecem conforto com alta retenção de umidade e acuidade visual com maior estabilidade nos olhos.
     
    Seu olhar em novas cores: suaves, discretas e bonitas.
     
     

     
    Vantagens da Lente de Contato Natural Colors:
     
    ✔ Tecnologia de última geração produzida pela Solótica;
    ✔ Conforto aliado a acuidade visual;
    ✔ Lente com GLICEROL, menor perda de hidratação
    ✔ Efeito natural em 9 opções de cores
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo de até 15 dias, recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     
    Prazo de validade:O prazo das lentes de contato lacradas é maior porque elas estão esterilizadas pelo processo de autoclave a 120 graus Celsius, livre de qualquer contaminação.A validade da lente começa a partir da abertura do lacre, pois o produto deixa de ser estéril, tendo influências de vários fatores para sua contaminação, como: proteínas da lágrima, fuligem, poeira, células epiteliais que se renovam, entre outros.O período de descartabilidade (troca anual ou mensal) deve ser respeitado de acordo com a orientação do fabricante. A diferença de uma descartabilidade para outra está relacionada com sua espessura e seu método de fabricação.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',475.00),
      (92,'Hidrocor Mensal','Hidrocor','kit-hidrocor-mensal-com-grau.jpg','Lentes de Contato Hidrocor Mensal:
     
    Já pensou em mudar a cor dos seus olhos e realçar sua beleza? A Solótica pensou por você.
     
    As lentes de contato coloridas Hidrocor com grau apresentam cores muito suaves que se mesclam com a cor dos olhos causando um efeito natural. Combinando tecnologia com cores lindas, as lentes Hidrocor não têm o anel limbal (usado para realçar a íris em algumas lentes coloridas), o que garante que a aparência dos olhos não fique artificial.
     
    Com substituição anual, estas lentes gelatinosas de fácil adaptação estão disponíveis em várias opções de cores e atendem graus de miopia e hipermetropia.
     
     

     
    Benefícios das lentes de contato Hidrocor com grau
     
    ✔ Saúde ocular, devido à resistência ao acúmulo de proteínas;
    ✔ Facilidade de adaptação;✔ Hidratação e lubrificação;✔ Ampla variedade de cores;
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',145.00),
      (93,'Natural Vision Ellegant Anual','Natural Vision','lentes-de-contato-natural-vision-color-ellegant-descarte-anual-plana-70208.jpg','Lentes de Contato Natural Vision Ellegant Anual:&nbsp;As Lentes de Contato da Linha Ellegant Natural Vision possuem 4 opções de cores.As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos a aquelas que necessitam de correção visual.&nbsp;&nbsp;&nbsp;Benefícios das lentes Natural Vision Ellegant Anual:&nbsp; Lentes coloridas com aspecto natural; Melhor custo benefício com descarte anual; Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;&nbsp;',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',85.00);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (94,'Estojo 3D - Hipopótamo','','estojo-3d-hipopotamo-57089.jpg','Os estojos 3D em formato de animais possuem outros 5 modelos:
    - Elefante (Amarelo)
    - Peixe (Lil&aacute;s)
    - Porco (Rosa)
    - Sapo (Verde)
    - Urso (Cinza)
    &nbsp;',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',79.00),
      (95,'Natural Vision Beauty Anual','Natural Vision','lentes-de-contato-natural-vision-color-beauty-descarte-anual-com-grau-70212.jpg','Lentes de Contato Natural Vision Beauty Anual - Com Grau&nbsp;Como as pedras preciosas, as lentes de contato Natural Vision Beauty Anual foi desenvolvida para deixar os seus olhos muito mais belos e encantadores!&nbsp;Com 5 opções de cores, as lentes de contato da linha Beauty possuem um desenho sem bordas com tonalidades claras.&nbsp;As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos a aquelas que necessitam de correção visual.&nbsp;&nbsp;&nbsp;Benefícios das lentes Natural Vision Beauty Anual:&nbsp;? Lentes coloridas com aspecto natural;? Melhor custo benefício com descarte anual;? Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',85.00),
      (96,'Hidrocor Tórica','Hidrocor','novas-lentes-de-contato-hidrocor-torica-para-astigmatismo-57497.jpg','Lentes de Contato Hidrocor Tórica:
    _____________________________
     
    ATENÇÃO: LENTE SOB ENCOMENDA
    Após a compra da lente, é necessário o envio da receita  e o exame de TOPOGRAFIA ou CERATOMETRIA. Caso Tenta alguma dificuldade no envio no ato da compra, por favor enviar pelo Fale Conosco.
     
    IMPORTANTE:
     
    O fabricante não aceita cancelamentos e devoluções para troca deste produto. Exceção somente para defeito de fabricação, comprovados após análise técnica.Em caso de dúvidas, entre em contato conosco.
     
    CENTRAL DE RELACIONAMENTO: 
     
    Atendimento de Segunda a Sexta-feira, das 9h às 17h(Exceto Feriados)
    Telefone: (11) 4873-2173
     
    _____________________________
     
    Já pensou em mudar a cor dos seus olhos e realçar sua beleza? A Solótica pensou por você.
     
    As lentes de contato coloridas Hidrocor apresentam cores muito suaves que se mesclam com a cor natural dos olhos causando efeitos impressionantes. Muitas opções de cores e graus além de opção de lentes tóricas para atender pacientes que necessitam correção visual.
     
    As lentes gelatinosas de uso diário Hidrocor estão disponíveis em nove cores diferentes . Além disso, são oferecidas em diferentes graus para correção de miopia ou hipermetropia, combinados ou não com baixo astigmatismo. A troca do produto deve ser feita em até 1 ano.
     
    Conheça a linha Hidrocor completa aqui.
     
     
     

     
     
    Vantagens da Lente de Contato Hidrocor Tórica:
     
    ✔ Saúde ocular, devido à resistência ao acúmulo de proteínas;
    ✔ Excelente conforto e manuseio;
    ✔ Proporciona visão nítida, clara e natural;
    ✔ Facilidade de adaptação;
    ✔ Hidratação e lubrificação;
    ✔ Ampla variedade de cores;
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     

     
    Dicas para quem usa lentes de contato
     

     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',475.00),
      (97,'Kit Natural Vision Glamour Anual','Natural Vision','kit-natural-vision-glamour-anual.jpg','Lentes de Contato Natural Vision Glamour Anual - Sem Grau:
     
    Realçando os olhos e oferecendo aspecto natural, as lentes Natural Vision Glamour Anual podem ser utilizadas durante 365 dias, tendo um excelente custo benefício.
     
    A Natural Vision Glamour Anual com grau é uma lente gelatinosa de alta qualidade que possibilita uma fácil adaptação, além de oferecer conforto durante o uso.
     
    Com 6 opções de cores disponíveis, a linha Glamour da Natural Vision realça os olhos de forma natural. As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos.
     
     

     
     
    Benefícios da Lentes de Contato Coloridas Natural Vision Glamour Anual - Sem Grau:
     
    ✔ Lentes coloridas com aspecto natural;
    ✔ Melhor custo benefício com descarte anual;
    ✔ Conforto e fácil adaptação.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',167.90),
      (98,'Luminous Clear Com Grau','Luminous','luminous-com-grau.jpg','Luminous Clear Com Grau
     
    As lentes de contato Luminous Clear, são fabricadas em Hydrogel com cores e tons naturais para os seus olhos. Use sua criatividade, renove seu visual de acordo com o seu astral. São 8 cores vibrantes, para você combinar com seu look preferido.
     
    São indicados para caso de miopia e para fins estéticos, podendo ser usados para uso diários ou prolongados, conforme orientação de seu especialista, não sendo indicado a sua utilização durante o sono.
     
     
     
     

     
     
    Vantagens das lentes Luminous Clear
     
    ✔ Tecnologia inovadora com 3 camadas de pigmentação;
    ✔ Cores naturais e vibrantes que se integram ao seu visual;
    ✔ Proteção UV.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',109.90),
      (99,'Bioblue Color 1-Day','Bioblue','bioblue-color-1-day.jpg','Bioblue Color 1-Day
     
    Se você precisa de lentes de contato que corrigem a miopia ou a hipermetropia, que ofereçam o conforto do descarte diário e com um plus incrível: Coloridas! Você achou as lentes certas!
     
    As lentes de contato Bioblue Color 1-Day possuem a segurança da tecnologia de pigmento de cor entre duas camadas, resultando em melhor conforto, pois as cores presentes na lente não entram em atrito com a córnea e a pálpebra. 
     
    A Bioblue Color 1-Day é extremamente confortável e mantém os olhos hidratados durante todo o uso, perdendo menos de 1% de umidade após 8 horas de uso. 
     
    A superfície da lente Bioblue Color 1-Day, não-iônica, rejeita o acúmulo de proteínas e bactérias, tornando as lentes mais seguras e livres de possíveis incômodos causados por estes depósitos.
     
    Com opções de cores vibrantes: Light Blue, Cinza, Mel, Azul e Verde, ficou muito mais fácil e agradável corrigir suas necessidades visuais, com a praticidade inigualável do descarte diário.
     
    Bioblue Color 1-Day, as lentes que vieram para facilitar o seu dia a dia com cores incríveis!
     

     
     
     
    Principais Características da Bioblue Color 1-Day:
    ✔ Tecnologia de microencapsulamento do pigmento de cores, que proporcionam maior saúde ocular;
    ✔ Material não-iônico, impossibilitando a aderência de depósitos e sujeiras nas lentes;
    ✔ Produzida com alto nível de DK, mantendo a retenção de água nas lentes;
    ✔ Excelente módulo para manipulação;
    ✔ Cores vibrantes.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',157.00),
      (100,'Kit Lunare Mensal - sem grau','Lunare','lentes-de-contato-lunare-mensal-sem-grau-62729.jpg','Lentes de contato Lunare Mensal com grau:
     
    As lentes de contato Lunare Mensal com grau são indicadas para a correção visual de pessoas com miopia e hipermetropia, enquanto oferecem uma nova cor para os olhos desses usuários.
    Com a exclusiva tecnologia TKI (Tri-Kolor Inside), essas lentes de descarte mensal são produzidas com três camadas internas de pigmentação. O que proporciona conforto superior e aspecto mais natural.
    O conforto dessas lentes também se deve ao fato da pigmentação ser absorvida pelas lentes,  evitando o atrito entre a lente e a pálpebra.
     
     

     
    Vantagens da Lente de Contato Lunare Mensal com grau:
     
    ✔ Correção visual com efeito cosmético natural✔ Facilidade de adaptação;✔ Descarte mensal, com grau.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Tecnologia Tki
     
    Com a inovadora tecnologia TKI (Tri-Kolor Inside), a pigmentação das lentes Lunare é feita dentro da lente, ao contrário de outras lentes coloridas, em que o pigmento é colocado na superfície.
     
    Imagens meramente ilustrativas
    Atenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor. Diversos fatores podem interferir no resultado da cor e o efeito da lente, como a cor natural dos olhos, da pele e dos cabelos.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',102.90),
      (101,'Optycolor Magic Top - Lentes Especiais','Optycolor','lentes-de-contato-magic-top-graus-altos-70194.jpg','Lentes de Contato Optycolor Magic Top - Lentes Especiais:
     
    As lentes de contato coloridas Optycolor Magic Top são lentes gelatinosas que corrigem miopias e hipermetropias que confere um visual natural para os olhos.Disponível em 6 cores, essas lentes coloridas realçam o olhar e permitem que você mude de estilo com naturalidade.Feitas em material tecnológico, essas lentes de descarte anual garantem conforto durante todo o período de uso.
     

    Vantagens da Lente de Contato Optycolor Magic Top
     
    ✔ Lentes coloridas com grau que corrigem Miopia e Hipermetropia;✔ Facilidade de adaptação;✔ Excelente conforto e manuseio;✔ Lentes hidratadas o dia todo;✔ Mudam a aparência com naturalidade.
     
    Conheça as cores das lentes Optycolor Magic Top
     
    Azul, cinza, lavanda, mel, turquesa, verde
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',299.00),
      (112,'Estojo Single Clear - Verde Transparente','','estojo-single-clear-verde-transparente.jpg','Estojo com proteção dupla para lentes de contato rígida ou gelatinosa

    Capa dobrável no próprio corpo do estojo.

    Dobradiça super resistente, estojo que cabe no bolso, tamanho ideal, leve e fácil de ser carregado.

    Cores disponíveis: Verde, Azul, Branco e Transparente',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',29.90),
      (102,'Kit Hidrocor RIO','Hidrocor','kit-hidrocor-rio-sem-grau.jpg','Lentes de contato Hidrocor RIO - sem grau
     
    Já pensou em mudar a cor dos seus olhos e realçar sua beleza? A Solótica pensou por você.
    As lentes de contato coloridas Hidrocor apresentam cores muito suaves que se mesclam com a cor natural dos olhos causando efeitos impressionantes. Muitas opções de cores e graus, além da opção de lentes tóricas para atender pacientes que necessitam correção visual.
     
    Conheça a linha Hidrocor completa aqui.
     
    As lentes Hidrocor Rio apresentam cores muito suaves que se mesclam com a cor natural dos olhos causando efeitos impressionantes. Baseadas nas belas paisagens e praias exuberantes do estado do Rio de Janeiro, essas lentes têm tonalidades diferenciadas que oferecem um novo visual com muita naturalidade.
    De descarte anual, as lentes de contato Hidrocor Rio são feitas para uso cosmético, por isso não possuem grau para correção visual. Essas lentes oferecem conforto e saúde visual, já que são resistentes ao acúmulo de proteínas e garantem a hidratação dos olhos durante o uso.
    A troca das lentes deve ser feita em até 1 ano, podendo ser utilizadas todos os dias, desde que feita a higienização correta.
     

    Vantagens da Lentes de Contato Kit Hidrocor RIO - sem grau
     
    ✔ Saúde ocular, devido à resistência ao acúmulo de proteínas;✔ Excelente conforto e manuseio;✔ Proporciona visão nítida, clara e natural;✔ Facilidade de adaptação;✔ Hidratação e lubrificação;✔ Ampla variedade de cores.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',255.90);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (103,'Bioview Multifocal','Bioview','bioview-multifocal.jpg','Bioview Multifocal:
     
    As lentes de Contato Biovew Multifocal são produzidas com material hidrofílico de alta performance pelo inovador e patenteado processo "Micro Molden System".
    Elas possuem visão interna com alta qualidade e desenho esférico que proporciona a correção das aberrações visuais que traduz na excelência desse produto.O polímero Methafilcon A tem uma alta afinidade com a água permitindo a hidratação ideal para maior conforto.
     
     

     
    Benefícios das lentes Bioview Multifocal:
     
    ✔ Alto teor de água garantindo maior conforto
    ✔ Proteção UV
    ✔ Material de alta performance 
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',342.90),
      (104,'Natural Vision Glamour Mensal','Natural Vision','lentes-de-contato-natural-vision-color-glamour-descarte-mensal-plana-70219.jpg','Lentes de Contato Natural Vision Glamour Mensal:&nbsp;Como as pedras preciosas, as lentes de contato Natural Vision Glamour Mensal&nbsp;foi desenvolvida para deixar os seus olhos muito mais belos e encantadores!&nbsp;Com 6&nbsp;opções de cores, as lentes de contato da linha Glamour possuem um desenho sem bordas com tonalidades claras.&nbsp;As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos a aquelas que necessitam de correção visual.&nbsp;&nbsp;Benefícios das lentes Natural Vision Beauty Anual:Lentes coloridas com aspecto natural;Melhor custo benefício com descarte mensal;Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',89.90),
      (105,'Air Clear','Air Clear','air-clear.jpg','Lentes de Contato Air Clear: 
     
    Uma combinação de tecnologias patenteadas, exclusivas para os seus olhos!
    As lentes de contato Air Clear Hydrogel mantém seus olhos naturalmente úmidos, com um inigualável conforto. Tudo isso com a vantagem de total bloqueio dos raios UV solares nocivos aos olhos.
    Com 53% de água, as lentes de contato Air Clear Hydrogel oferecem hidratação e conforto excepcional.
     
     

     
    Vantagens da Lente de Contato Air Clear: 
     
    ✔ Agente umectante BioPlus;
    ✔ Elevado teor de hidratação, seus olhos naturalmente úmidos;
    ✔ Conforto durante todo o dia. Adeus às irritações e alergias;
    ✔ Fácil manuseio, indicado para primeiros usuários.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',187.99),
      (106,'Natural Vision Ellegant Mensal','Natural Vision','lentes-de-contato-natural-vision-color-ellegant-descarte-mensal-plana-70207.jpg','Lentes de Contato Natural Vision Ellegant Mensal:&nbsp;As lentes de contato Natural Vision Ellegant possuem 4 opções de cores.&nbsp;As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos a aquelas que necessitam de correção visual.&nbsp;&nbsp;&nbsp;Benefícios das lentes Natural Vision Ellegant Mensal:&nbsp;Lentes coloridas com aspecto natural;Melhor custo benefício com descarte mensal;Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.&nbsp;',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',89.90),
      (107,'Optogel OP60 - Lentes Especiais','Optogel','lentes-de-contato-optogel-op60-graus-altos-68047.jpg','Lentes de Contato Optogel OP60 - Lentes Especiais:
     
    As lentes de contato Optogel OP60 - Lentes Especiais  são lentes gelatinosas incolores, de uso prolongado e são flexíveis, sendo indicadas para correção de miopia ou hipermetropia e compensação de Astigmatismo até 0,75 Cil.
    As lentes possuem excelente hidratação, pois seu material é feito com glicerol, o que mantêm as lentes hidratadas o dia todo.
    Além disso, elas são resistentes ao acúmulo de muco, proteínas, cálcio e fungos.
    Elas são de descarte anual e o seu uso é diário (retirado todos os dias antes de dormir).
     

    Benefícios da lente Optogel OP60 - Lentes Especiais:
     
    ✔ Saúde ocular, devido à resistência ao acúmulo de proteínas
    ✔ Excelente conforto e manuseio
    ✔ Proporciona visão nítida, clara e natural
    ✔ Facilidade de adaptação
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',299.00),
      (113,'Kit Natural Vision Beauty Anual','Natural Vision','kit-natural-vision-beauty-anual.jpg','Lentes de Contato Natural Vision Beauty Anual - Com Grau&nbsp;Como as pedras preciosas, as&nbsp;lentes de contato&nbsp;Natural Vision Beauty Anual&nbsp;foi desenvolvida para deixar os seus olhos muito mais belos e encantadores!&nbsp;Com&nbsp;5 opções de cores, as lentes de contato da linha Beauty possuem um desenho sem bordas com tonalidades claras.&nbsp;As lentes de contato coloridas atendem usuários que procuram apenas a utilização para&nbsp;fins estéticos&nbsp;a aquelas que necessitam de&nbsp;correção visual.&nbsp;Benefícios das lentes Natural Vision Beauty Anual:&nbsp;? Lentes coloridas com aspecto natural;? Melhor custo benefício com descarte anual;? Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:&nbsp;- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',167.90),
      (114,'Optogel Tórica Color','Optogel','optogel-torica-colorida.jpg','Lentes de contato Optogel Tórica Color:
     
    _____________________________
     
    ATENÇÃO: LENTE SOB ENCOMENDA
    Após a compra da lente, é necessário o envio da receita  e o exame de TOPOGRAFIA ou CERATOMETRIA. Caso Tenta alguma dificuldade no envio no ato da compra, por favor enviar pelo Fale Conosco.
     
    IMPORTANTE:
     
    O fabricante não aceita cancelamentos e devoluções para troca deste produto. Exceção somente para defeito de fabricação, comprovados após análise técnica.Em caso de dúvidas, entre em contato conosco.
     
    CENTRAL DE RELACIONAMENTO: 
     
    Atendimento de Segunda a Sexta-feira, das 9h às 17h(Exceto Feriados)
    Telefone: (11) 4873-2173
     
    _____________________________
     
     
    As lentes de contato Optogel Tórica Color são lentes de contato gelatinosas coloridas indicadas para astigmatismo corneanos e residuais.
     
    Indicadas para usuários que buscam correção sem abrir mão do conforto com estilo.
     
     

     
    Benefícios da lente Optogel Tórica Color:
     
    ✔ Proteção UV;
    ✔ 55% de hidratação proporcionando maior conforto;
    ✔ Textura suave que permite oxigenação na superfície ocular.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Especificações:
    A Optogel Tórica Color atende do grau;

    -15.00 a +12.00 com cilindro até -5.00

    Observação: Se o seu grau for de 0.00 a 20.00 (+/-) com o cilindro acima de -5.25, CLIQUE AQUI!',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',619.00),
      (115,'Optogel OP42','Optogel','lentes-de-contato-optogel-op42-56942.jpg','Lentes de Contato Optogel OP42:
     

    As lentes Optogel OP42 são lentes de contato gelatinosas com grande durabilidade, facilidade de manuseio e muito resistente, indicada para miopia e hipermetropia.
    Especial para usuários que possuem olho seco e buscam praticidade de manuseio aliados a resistência do produto.
     

     
    Benefícios das lentes Optogel OP42:
     

    ✔ Saúde ocular, devido à resistência ao acúmulo de proteínas;
    ✔ Excelente conforto e manuseio;
    ✔ Proporciona visão nítida, clara e natural.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',149.90),
      (116,'Optycolor Magic Top Intense','Optycolor','lente-de-contato-optycolor-magic-top-intense-sem-grau.jpg','Lentes de Contato Magic Top Intense:
     
    As lentes Optycolor Magic Top Intense são lentes de contato gelatinosas coloridas de grande impacto visual que mesclam com a cor dos olhos, evidenciando seu olhar e mudando o seu visual.
     
    A Magic Top está disponível em 6 cores: azul, verde, mel, cinza, lavanda e turquesa.Especial para usuários que querem destacar seu olhar, com cores mais impactantes e intensas.
     
     

     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
      
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',159.99),
      (117,'Natural Vision Dreams Anual','Natural Vision','lentes-de-contato-natural-vision-color-dreams-descarte-anual-com-grau-70220.jpg','Lentes de Contato Natural Vision Dreams Anual - Com Grau:&nbsp;Com traços marcantes, as lentes de contato Natural Vision Dreams possui um desenho maravilhoso deixando seus olhos naturais e belos.&nbsp;São 4 cores incríveis para você mudar o seu visual.&nbsp;As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos a aquelas que necessitam de correção visual.&nbsp;&nbsp;&nbsp;Benefícios das lentes Natural Vision Dreams Anual:&nbsp;Lentes coloridas com aspecto natural;Melhor custo benefício com descarte anual;Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',85.00);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (118,'Kit Natural Vision Ellegant Anual - Sem Grau','Natural Vision','kit-natural-vision-ellegant-anual.jpg','Lentes de Contato Natural Vision Ellegant Anual:
     
    As Lentes de Contato da Linha Ellegant Natural Vision possuem 4 opções de cores.
    As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos.
     
     

     
    Benefícios das lentes Natural Vision Ellegant Anual:
     
    ✔ Lentes coloridas com aspecto natural;✔ Melhor custo benefício com descarte anual;✔ Conforto e fácil adaptação.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',167.90),
      (120,'Bioblue Multicolor 55','Bioblue','bioblue-multicolor-55.jpg','Lentes de contato Bioblue Multicolor 55:
     
    As lentes de contato Bioblue Multicolor 55 são lentes de uso diário e descarte mensal.
     
    Com microencapsulamento do pigmento para melhor saúde ocular. Conta com uma tecnologia que foi criada para você usar as lentes coloridas sem preocupações.
    Design de bordas patenteado para lentes mais finas e confortáveis.
     
     

     
    Benefícios da lente Bioblue Multicolor 55:
     
    ✔ Cores naturais e vibrantes que se integram ao seu visual;
    ✔ 55% de hidratação, proporcionando maior conforto;
    ✔ Proteção UV.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',69.00),
      (121,'Aqualife','Aqualife','aqualife.jpg','Lentes de Contato Aqualife:
     
    As lentes de contato Aqualife são lentes de contato gelatinosas de descarte mensal. Indicadas para correção de Miopia e Hipermetropia.
    Possiu um desenho asférico, proporcionando uma excelente qualidade de visão.
     

    Vantagens das Lentes de Contato Aqualife:
     
    ✔ Proteção UV;
    ✔ Conforto e durabilidade;
    ✔ Alto teor de umidade prevenindo irritações;
    ✔ Com tinta de visibilidade para facilitar o manuseio da lente.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',65.00),
      (122,'Sclera','SCLERA','sclera.jpg','Lentes de Contato Sclera:
    As lentes de contato coloridas Sclera, da Cosplay Universe, são ideais para uso artístico em eventos, shows, festas e não possuem grau.
     
    Essas lentes são feitas de hidrogel com alto teor de água e mantendo os olhos sempre hidratados. Além disso, contam com permeabilidade ao oxigênio, oferecendo mais conforto.
     
    As lentes de contato Sclera possuem 17mm de diâmetro, sendo maiores que as lentes convencionais. Por isso, dão a impressão de íris aumentada sem prejudicar a nitidez da visão, sendo um diferencial para fantasias.
     
    Devido à tecnologia de proteção dupla de revestimento, os pigmentos das lentes não entram em contato direto com os olhos, garantindo visão segura durante todo tempo de uso.
     
    Por contarem com alta cobertura de tonalidade, são capazes de encobrir a cor original dos olhos, garantindo o visual desejado.
     

    Benefícios das lentes Sclera:
     
    ✔ Alto teor de água;
    ✔ Tecnologia de proteção dupla de revestimento;
    ✔ Pigmentação com alta cobertura;
    ✔ Diâmetro maior que lentes convencionais.
     
    Cor Disponível:

     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',259.00),
      (123,'Air Clear O2/Max','Air Clear','air-clear-o2-max.jpg','Air Clear O2/Max
     
    As lentes de contato AirClear de Silicone Hidrogel oferecem alto desempenho.
     
    Seu material de silicone hidrogel permite alta permeabilidade ao oxigênio, resultando em excelente conforto para o uso diário, reduzindo os olhos secos e a vermelhidão.
    Com Silicone Hydrogel de alta performance, é perfeita para quem usa smartphones, tablets e computadores por longos períodos.
     
    Tudo isso com a vantagem de total bloqueio dos raios UV solares nocivos aos olhos.
     
     

     
     
    Vantagens da Lente de Contato Air Clear O2/Max:
     
    ✔ Alto teor de água;
    ✔ 7x mais oxigênio;
    ✔ Air Edge para melhor circulação da lágrima;
    ✔ Design de curva asférica e inteligente.
    ✔ 3ª Geração Alta Performance.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;
    - Guarde suas lentes em local adequado e limpe o estojo regularmente;
    - Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',267.90),
      (124,'Biosoft Color Phanton','Biosoft','biosoft-color-phanton.jpg','Lentes de contato BioSoft Color Phanton:
     
    A Biosoft Color Phanton é fabricada com material de polymacon clássico, que ainda é amplamente reconhecido por sua durabilidade, confiabilidade e desempenho em todos os ambientes.
     
    Os pigmentos utilizados são corantes aprovados pela FDA.
     
    Os benefícios do usuário incluem ajuste ideal nos olhos, manuseio simples e prático, conforto aprimorado, ótica premium e olhos incrivelmente bonitos.
     
    A borda mais fina proporciona maior conforto.
     
    As lentes de contato Biosoft Color oferecem opções para todos; de sutis aprimoramentos de cor a novos visuais impressionantes, nossa seleção de cores engloba todos eles.
     
    Visual autêntico com conforto incomparável.
     
     

     
    Benefícios da lente Biosft Color Phanton:
     
    ✔ Cores naturais e vibrantes que se integram ao seu visual;
    ✔ Proteção UV.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',109.90),
      (125,'Renu Fresh PackON','','renu-freshr-multiuso-packon.jpg','Renu Fresh PackON
    Solu&ccedil;&atilde;o de limpeza para o cuidado di&aacute;rio das lentes de contato gelatinosas, incluindo silicone hidrogel.
    Embalagem econ&ocirc;mica.

    Limpa
    Desinfecta em 4 horas
    Conserva
    Lubrifica
    Hidrata
    Remove prote&iacute;nas

    A&nbsp;Solu&ccedil;&atilde;o Multiuso Renu&reg;&nbsp;Fresh&nbsp;foi desenvolvida especialmente para voc&ecirc;, que se preocupa com a seguran&ccedil;a e o conforto oferecidos pelas suas lentes de contato gelatinosas, incluindo as de silicone hidrogel.
    Renu&reg;&nbsp;Fresh&nbsp;limpa, removendo as impurezas da superf&iacute;cie, enquanto atua para desprender e remover as prote&iacute;nas naturais das l&aacute;grimas - que podem ficar acumuladas e incrustadas nas lentes de contato, com potencial para causar desconforto e irrita&ccedil;&atilde;o. Al&eacute;m disso, a a&ccedil;&atilde;o desinfectante da Solu&ccedil;&atilde;o Renu&reg;&nbsp;Fresh elimina fungos e bact&eacute;rias das suas lentes.
    E, para manter o conforto di&aacute;rio durante o uso e a melhor conserva&ccedil;&atilde;o poss&iacute;vel durante o regime de uso de cada lente, a formula&ccedil;&atilde;o da&nbsp;solu&ccedil;&atilde;o Renu&reg;&nbsp;Fresh&nbsp;garante a lubrifica&ccedil;&atilde;o ideal para a melhor experi&ecirc;ncia na coloca&ccedil;&atilde;o e retirada de suas lentes de contato (e na movimenta&ccedil;&atilde;o natural delas durante o uso), enquanto as mant&eacute;m com o percentual adequado de hidrata&ccedil;&atilde;o e nas melhores condi&ccedil;&otilde;es de conserva&ccedil;&atilde;o, at&eacute; o &uacute;ltimo dia antes do descarte recomendado.
    S&atilde;o 6 benef&iacute;cios em 1 &uacute;nica solu&ccedil;&atilde;o: limpeza, desinfec&ccedil;&atilde;o, conserva&ccedil;&atilde;o, lubrifica&ccedil;&atilde;o, hidrata&ccedil;&atilde;o e remo&ccedil;&atilde;o de prote&iacute;nas de suas lentes de contato.
    Caracter&iacute;sticas e Vantagens

    Ideal para pessoas que necessitam de praticidade e rapidez no cuidado das suas lentes de contato;
    Proporciona a hidrata&ccedil;&atilde;o da lente garantindo conforto durante o seu uso;
    Promove a desinfec&ccedil;&atilde;o e limpeza em 4 horas.

    Indica&ccedil;&otilde;es
    Indicado para limpeza, remo&ccedil;&atilde;o de dep&oacute;sitos de prote&iacute;nas, lavagem, desinfec&ccedil;&atilde;o qu&iacute;mica e armazenamento de lentes de contato gelatinosas.
    Apresenta&ccedil;&atilde;o (embalagem)
    Renu Fresh Solu&ccedil;&atilde;o Multiuso 355ml + 120ml + estojo para lentes de contato&nbsp;

    Conhe&ccedil;a mais sobre as Solu&ccedil;&otilde;es Multiuso Bausch+Lomb
    &nbsp;

    &nbsp;
    Assista a campanha: Soro n&atilde;o &eacute; solu&ccedil;&atilde;o
    &nbsp;
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',62.00),
      (126,'Optogel Tórica - Especial','Optogel','optogel-torica-especial.jpg','Optogel Tórica Especial:
     
    _____________________________
     
    ATENÇÃO: LENTE SOB ENCOMENDA
    Após a compra da lente, é necessário o envio da receita  e o exame de TOPOGRAFIA ou CERATOMETRIA. Caso Tenta alguma dificuldade no envio no ato da compra, por favor enviar pelo Fale Conosco.
     
    IMPORTANTE:
     
    O fabricante não aceita cancelamentos e devoluções para troca deste produto. Exceção somente para defeito de fabricação, comprovados após análise técnica.Em caso de dúvidas, entre em contato conosco.
     
    CENTRAL DE RELACIONAMENTO: 
     
    Atendimento de Segunda a Sexta-feira, das 9h às 17h(Exceto Feriados)
    Telefone: (11) 4873-2173
     
    _____________________________
     
     
    As lentes de contato Optogel Tórica - Especial são lentes de contato gelatinosas indicadas para astigmatismo corneanos e residuais.
     
    Indicadas para usuários que buscam conforto aliados a uma qualidade visual superior.
     
    As lentes de contato gelatinosas são feitas com polímeros hidrofílicos, com textura suave semelhante ao gel, que permite passagem do oxigênio através da lente e preservação da superfície ocular.
    Suas propriedades mantém a superfície do olho saudável, permitindo maior conforto na relação lente-córnea. 
     
    
    Benefícios da lente Optogel Tórica - Especial:
     
    ✔ Proteção UV
    ✔ 55% de hidratação proporcionando maior conforto
    ✔ Textura suave que permite oxigenação na superfície ocular
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     
     
    Especificações: 
    A Optogel Tórica Especial atende do grau;

    -15.50 a -20.00 e do +12.50 a +20.00, com cilindro até -5.00.
    0.00 a 20.00 (+/-) com o cilindro acima de -5.25 a -10.00.

    Observação: Caso o as especificações acima não se encaixem com os parâmetros que precisa,  CLIQUE AQUI!',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',767.90),
      (127,'Natural Vision Dreams Mensal','Natural Vision','lentes-de-contato-natural-vision-color-dreams-descarte-mensal-com-grau-70204.jpg','Lentes de Contato Natural Vision Dreams Mensal - Com Grau:&nbsp;Com traços marcantes, as lentes de contato Natural Vision Dreams possui um desenho maravilhoso deixando seus olhos naturais e belos.&nbsp;São 4 cores incríveis para você mudar o seu visual.&nbsp;As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos a aquelas que necessitam de correção visual.&nbsp;&nbsp;&nbsp;Benefícios das lentes Natural Vision Dreams Mensal:&nbsp;? Lentes coloridas com aspecto natural;? Melhor custo benefício com descarte mensal;? Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',89.90),
      (128,'Renu Plus Gotas Lubrificante & Umidificante 8ml','','renu-plus-8ml-gotas-umidificantes-56998.jpg','Renu Plus Gotas Lubrificante &amp; Umidificante 8ml
    Gotas para uma lubrifica&ccedil;&atilde;o eficaz e umidifica&ccedil;&atilde;o das lentes de contato gelatinosas durante o seu uso.
    Caracter&iacute;sticas e Vantagens
    Proporciona a umidifica&ccedil;&atilde;o adequada das lentes durante o uso.
    Indica&ccedil;&otilde;es
    Ideal para pessoas que exer&ccedil;am atividades que favore&ccedil;am o ressecamento das lentes (Ex.: tempo excessivo em frente ao computador), habitem regi&otilde;es com baixa umidade e/ou possuam insufici&ecirc;ncia na produ&ccedil;&atilde;o lacrimal.
    Composi&ccedil;&atilde;o
    Solu&ccedil;&atilde;o isot&ocirc;nica est&eacute;ril contendo &aacute;cido b&oacute;rico, cloreto de pot&aacute;ssio, borato de s&oacute;dio e cloreto de s&oacute;dio; preservada com &aacute;cido s&oacute;rbico 0,1% e edetato diss&oacute;dico 0,1%.
    POVIDONA
    Forma uma camada hidrof&iacute;lica na superf&iacute;cie da lente, hidratando-a proporcionando assim maior clareza na vis&atilde;o e conforto no uso.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',29.90);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (129,'Vision 20/20 - Lentes Especiais','Vision 20/20','vision-20-20-lentes-especiais.jpg','Lentes de Contato Vision 20/20 - Lentes Especiais:
     
    As lentes de contato Vision 20/20 são lentes de contato gelatinosas de descarte mensal.  Indicada para correção de Miopia e Hipermetropia.
    Atendem graus mais altos (+12,00 ao -20,00).São lentes são feitas para manter a umidade dos olhos, por isso têm alto teor de água, garantindo hidratação e conforto durante o uso.
     
     

     
    Benefícios das lentes Vision 20/20:
     
    ✔ Alto teor de água, garantindo hidratação dos olhos;
    ✔ Fácil manuseio;
    ✔ Permitem a chegada de 100% do oxigênio necessário ao olho;
    ✔ Superfície lisa, garantindo clareza e nitidez.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',255.90),
      (130,'Biotrue Solução PackOn','','biotrue-multiuso-packon.jpg','Biotrue Solu&ccedil;&atilde;o PackOn
    Solu&ccedil;&atilde;o bioinspirada desenvolvida para funcionar como os seus olhos, facilitando o uso de lentes de contato devido ao pH compat&iacute;vel com a l&aacute;grima saud&aacute;vel e proporcionando at&eacute; 20 horas de hidrata&ccedil;&atilde;o.
    Embalagem econ&ocirc;mica.
    Caracter&iacute;sticas e Vantagens

    Cont&eacute;m hialuronato de s&oacute;dio, proporcionando at&eacute; 20 horas de hidrata&ccedil;&atilde;o;
    pH compat&iacute;vel como da l&aacute;grima saud&aacute;vel, evitando ard&ecirc;ncia;
    Mant&eacute;m &iacute;ntegras as prote&iacute;nas ben&eacute;ficas da l&aacute;grima, respons&aacute;veis pela a&ccedil;&atilde;o antimicrobiana inerente.

    Indica&ccedil;&otilde;es
    Indicado para limpeza, remo&ccedil;&atilde;o de dep&oacute;sitos de prote&iacute;nas, lavagem, desinfec&ccedil;&atilde;o qu&iacute;mica e armazenamento de lentes de contato gelatinosas.
    Apresenta&ccedil;&atilde;o (embalagem)
    Biotrue Solu&ccedil;&atilde;o Multiuso 300ml + 120ml + estojo para lentes de contato
    Conhe&ccedil;a mais sobre as Solu&ccedil;&otilde;es Multiuso Bausch+Lomb
    &nbsp;

    &nbsp;
    Assista a campanha: Soro n&atilde;o &eacute; solu&ccedil;&atilde;o
    &nbsp;
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',65.00),
      (131,'Luminous Clear Sem Grau','Luminous','luminous-clear-sem-grau.jpg','Luminous Clear Sem Grau
     
    As lentes de contato Luminous Clear, são fabricadas em Hydrogel com cores e tons naturais para os seus olhos. Use sua criatividade, renove seu visual de acordo com o seu astral. São 8 cores vibrantes, para você combinar com seu look preferido.
     
     
     

     
     
    Vantagens das lentes Luminous Clear
     
    ✔ Tecnologia inovadora com 3 camadas de pigmentação;
    ✔ Cores naturais e vibrantes que se integram ao seu visual;
    ✔ Proteção UV.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',102.00),
      (132,'Solflex Color Hype','Solflex','lentes-de-contato-solflex-color-hype-sem-grau-63913.jpg','Lentes de Contato Solflex Color Hype:
     
    As lentes de contato Solflex Color Hype são lentes gelatinosas, de descarte mensal.
     
    Ideiais para quem as procura para uso estético, elas possuem 3 opções de cores impactantes para efeitos teatrais e ocasiões especiais.
     
     

    Benefícios das lentes Solflex Color Hype:
     
    ✔ Lentes coloridas com aspecto natural;✔ Melhor custo benefício com descarte mensal;✔ Conforto e fácil adaptação.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     
     
    ATENÇÃO: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor.
    Prazo de validade:O prazo das lentes de contato lacradas é maior porque elas estão esterilizadas pelo processo de autoclave a 120 graus Celsius, livre de qualquer contaminação.A validade da lente começa a partir da abertura do lacre, pois o produto deixa de ser estéril, tendo influências de vários fatores para sua contaminação, como: proteínas da lágrima, fuligem, poeira, células epiteliais que se renovam, entre outros.O período de descartabilidade (troca anual ou mensal) deve ser respeitado de acordo com a orientação do fabricante. A diferença de uma descartabilidade para outra está relacionada com sua espessura e seu método de fabricação.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',142.00),
      (133,'Renu Gotas Umidificantes 15ml','','renu-plus-15ml-gotas-umidificantes-64284.jpg','Renu Gotas Umidificantes 15ml
    Sua F&oacute;rmula suave remove part&iacute;culas que causam irrita&ccedil;&atilde;o nos olhos e alivia o ressecamento e desconforto ocasionais.
    &nbsp;
    Caracter&iacute;sticas e Vantagens
    &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Proporciona a umidifica&ccedil;&atilde;o adequada das lentes durante o uso;
    &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Elimina e previne a forma&ccedil;&atilde;o de dep&oacute;sitos durante o uso de lentes, reduzindo irrita&ccedil;&otilde;es causadas por impurezas.&nbsp;
    Indica&ccedil;&otilde;es
    Ideal para umidificar e evitar a forma&ccedil;&atilde;o de dep&oacute;sitos nas lentes de contato gelatinosas durante o uso.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',57.00),
      (134,'Kit Natural Vision Dreams Anual','Natural Vision','kit-natural-vision-dreams-anual.jpg','Lentes de Contato Natural Vision Dreams Anual:&nbsp;Com traços marcantes, as lentes de contato Natural Vision Dreams possui um desenho maravilhoso deixando seus olhos naturais e belos.&nbsp;São 4 cores incríveis para você mudar o seu visual.&nbsp;As lentes de contato coloridas atendem usuários que procuram apenas a utilização para fins estéticos.&nbsp;Benefícios das lentes Natural Vision Dreams Anual:&nbsp; Lentes coloridas com aspecto natural; Melhor custo benefício com descarte anual; Conforto e fácil adaptação.&nbsp;Como Cuidar destas Lentes de Contato:- Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',167.90),
      (135,'Colourise','Colourise','colourise.jpg','Colourise

    Caracter&iacute;sticas do Produto:As lentes Colourise s&atilde;o lentes de contato gelatinosas coloridas de grande impacto visual que mesclam com a cor dos olhos, evidenciando seu olhar e mudando o seu visual.A Colourise est&aacute; dispon&iacute;vel em 4 cores: azul, verde, mel e cinza.Especial para usu&aacute;rios que querem destacar seu olhar, com cores mais impactantes e intensas.

    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',95.99),
      (136,'Renu Advanced Packon (355ml + 120 ml)','','kit-renu-advanced-475ml-355ml-120-ml.jpg','RENU® ADVANCEDSolução multiusoCondiciona, limpa, remove proteínas, desinfeta, umidifica, lava e armazena.Modo de Usar: Para armazenamento, limpeza, conservação, umidificação, remoçãode proteínas e desinfecção das lentes, siga esses simples passos:PASSO 1: Coloque no mínimo 3 gotas de Renu® Advanced Solução Multiuso de cada lado das superfícies das lentes, esfregando delicadamente por 20 segundos.PASSO 2: Enxague completamente cada lado das lentes por 5 segundos, utilizandoRenu® Advanced Solução Multiuso.PASSO 3: Coloque as lentes de contato limpas no estojo e preencha com Renu®Advanced Solução Multiuso. Deixe as lentes mergulhadas na solução por no mínimo 4horas*. Lembre-se de sempre de utilizar a solução fresca – descarte a solução doestojo das lentes após cada uso.*Estudos demonstram que esse é o período necessário para que a Renu®AdvancedSolução Multiuso exerça sua capacidade de desinfecção para as seguintes bactérias:S. aureus, P. aeruginosa, S. marcescens, C. albicans e F. solani.Suas lentes agora estão prontas para uso. Se qualquer detrito permanecer na sualente de contato, lave-a com Renu® Advanced Solução Multiuso antes de colocá-la.Siga sempre as instruções de seu oftalmologista. Baseando-se em característicasquímicas individuais e tempo de uso da lente, seu oftalmologista pode recomendarprodutos e procedimentos adicionais.Caso não for usar as lentes de contato imediatamente, armazene-as no estojo paralentes. Não armazenar suas lentes em simples solução salina substituindo Renu® Advanced Solução Multiuso. A solução salina não desinfeta o material.As lentes podem ser armazenadas no estojo fechado por no máximo 30 dias. Casonecessite armazenar suas lentes por períodos maiores, estas devem ser limpas edesinfetadas com solução fresca de Renu®Advanced Solução Multiuso antes de serem colocadas.Mecanismo de ação: Quando usada diariamente, Renu® Advanced Solução Multiusodissolve proteínas e limpa, solta e remove acúmulos de filme, detritos e depósitos daslentes de contato gelatinosas. Renu® Advanced Solução Multiuso ajuda a evitar aformação de depósitos irritantes na superfície da lente. Mata micro-organismos nocivos na lente. Renu® Advanced Solução Multiuso também pode ser usada para enxaguar as lentes.Benefícios de Renu® Advanced Solução Multiuso: Renu® Advanced Solução Multiuso tem um sistema único de desinfecção tripla. Renu® Advanced Solução Multiuso reidrata as lentes.Indicações: O produto é indicado para o condicionamento diário, limpeza,umidificação, remoção de depósitos de proteínas, lavagem, desinfecção química (semaquecimento) e conservação de lentes de contato gelatinosas (hidrofílicas), incluindolentes de silicone hidrogel, conforme recomendação do seu oftalmologista.Contraindicações: Não existem contraindicações para o uso de Renu® Advanced Solução Multiuso. Porém, não o utilize caso seja alérgico a algum componente da sua fórmula.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',79.90),
      (137,'Impressions Three Tones Mensal','Impressions','lentes-de-contato-impressions-color-mensal.jpg','

    Impressions Colors Three Tones - Mensal
     
    A Lente de Contato Anual Impressions Color, fornecida em blister é importada, fabricada com material de última geração, acompanhando padrão mundial de qualidade, testada e aprovada pelo Ministério da Saúde (ANVISA).
     
    Fabricadas com o inovador processo "Three Tones"  que reproduz o contorno da pupila e do íris, proporcionando um olhar muito mais natural.
     
    Para maior conforto,segurança e um uso saudável, as lentes Impression Three Tones são produzidas com bordas mais finas e arredondadas, com pigmentação de tinta polimérica atóxia (material não nocivo) e desenho asférico que proporciona uma visão mais nítida.
     
     


     
     
    Benefícios das Lentes Impressions Three Tones Mensal

    ✔ Proteção UV;
    ✔ Tinta polimérica atóxia;
    ✔ Bordas mais finas e arredondadas.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',82.90),
      (138,'Kit Opti-Free Puremoist','','kit-opti-free-pure-moist-300-ml-120-ml.jpg','Kit Opti-Free Puremoist
    OPTI-FREE PureMoist Solu&ccedil;&atilde;o de Desinfec&ccedil;&atilde;o Multiprop&oacute;sito para lente de contato fornece at&eacute; 16 horas de hidrata&ccedil;&atilde;o a partir do momento que voc&ecirc; colocar as lentes at&eacute; o final de seu dia &ndash; assim voc&ecirc; pode ter confian&ccedil;a em suas lentes de contato.
    Apenas OPTI-FREE PureMoist Solu&ccedil;&atilde;o de Desinfec&ccedil;&atilde;o Multiprop&oacute;sito tem HydraGlyde Matriz Umidificante. Ela cria um escudo cont&iacute;nuo de umidade para manter a lente hidratada ao longo do dia. OPTI-FREE PureMoist Solu&ccedil;&atilde;o para lentes de contato proporciona conforto de inser&ccedil;&atilde;o at&eacute; a remo&ccedil;&atilde;o.
    Prote&iacute;nas e lip&iacute;dios de suas l&aacute;grimas podem acumular-se em suas lentes de contato, causando irrita&ccedil;&atilde;o e at&eacute; mesmo afetar a sua vis&atilde;o. OPTI-FREE PureMoist Solu&ccedil;&atilde;o para de lentes de contato se liga a suas lentes para evitar ac&uacute;mulo de lip&iacute;dios e remover dep&oacute;sitos de prote&iacute;nas. Gra&ccedil;as a este poder avan&ccedil;ado contra dep&oacute;sitos, suas lentes v&atilde;o ficar limpas e com sensa&ccedil;&atilde;o de frescas.
    Al&eacute;m de oferecer at&eacute; 16 horas de hidrata&ccedil;&atilde;o e remo&ccedil;&atilde;o de dep&oacute;sitos, OPTI-FREE PureMoist Solu&ccedil;&atilde;o para lentes de contato tamb&eacute;m cont&eacute;m uma f&oacute;rmula de desinfec&ccedil;&atilde;o avan&ccedil;ada. A POLYQUAD and ALDOX sistema de desinfe&ccedil;&atilde;o duplo agem contra microrganismos nocivos, incluindo bact&eacute;rias, fungos e acanthamoeba. Estes ingredientes comprovadamente desinfetam todos os tipos de lentes de contato gelatinosas. Mas esta f&oacute;rmula especial ainda &eacute; suave o suficiente para olhos sens&iacute;veis.
    Conte&uacute;do do Kit
    Frasco 300ml + Frasco 120ml + estojo para lentes de contato.
    *Lembre-se, somente o oftalmologista pode determinar a lente de contato e combina&ccedil;&atilde;o de solu&ccedil;&atilde;o que ir&aacute; funcionar melhor para voc&ecirc;.
    Assista sobre as Solu&ccedil;&otilde;es Opti-Free
    &nbsp;
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',122.00);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (139,'Opti-Free PureMoist 90 ml','','opti-free-pure-moist-90-ml.jpg','Opti-Free Puremoist - 90ml
    OPTI-FREE PureMoist Solu&ccedil;&atilde;o de Desinfec&ccedil;&atilde;o Multiprop&oacute;sito para lente de contato fornece at&eacute; 16 horas de hidrata&ccedil;&atilde;o a partir do momento que voc&ecirc; colocar as lentes at&eacute; o final de seu dia &ndash; assim voc&ecirc; pode ter confian&ccedil;a em suas lentes de contato.
    Apenas OPTI-FREE PureMoist Solu&ccedil;&atilde;o de Desinfec&ccedil;&atilde;o Multiprop&oacute;sito tem HydraGlyde Matriz Umidificante. Ela cria um escudo cont&iacute;nuo de umidade para manter a lente hidratada ao longo do dia. OPTI-FREE PureMoist Solu&ccedil;&atilde;o para lentes de contato proporciona conforto de inser&ccedil;&atilde;o at&eacute; a remo&ccedil;&atilde;o.
    Prote&iacute;nas e lip&iacute;dios de suas l&aacute;grimas podem acumular-se em suas lentes de contato, causando irrita&ccedil;&atilde;o e at&eacute; mesmo afetar a sua vis&atilde;o. OPTI-FREE PureMoist Solu&ccedil;&atilde;o para de lentes de contato se liga a suas lentes para evitar ac&uacute;mulo de lip&iacute;dios e remover dep&oacute;sitos de prote&iacute;nas. Gra&ccedil;as a este poder avan&ccedil;ado contra dep&oacute;sitos, suas lentes v&atilde;o ficar limpas e com sensa&ccedil;&atilde;o de frescas.
    Al&eacute;m de oferecer at&eacute; 16 horas de hidrata&ccedil;&atilde;o e remo&ccedil;&atilde;o de dep&oacute;sitos, OPTI-FREE PureMoist Solu&ccedil;&atilde;o para lentes de contato tamb&eacute;m cont&eacute;m uma f&oacute;rmula de desinfec&ccedil;&atilde;o avan&ccedil;ada. A POLYQUAD and ALDOX sistema de desinfe&ccedil;&atilde;o duplo agem contra microrganismos nocivos, incluindo bact&eacute;rias, fungos e acanthamoeba. Estes ingredientes comprovadamente desinfetam todos os tipos de lentes de contato gelatinosas. Mas esta f&oacute;rmula especial ainda &eacute; suave o suficiente para olhos sens&iacute;veis.
    *Lembre-se, somente o oftalmologista pode determinar a lente de contato e combina&ccedil;&atilde;o de solu&ccedil;&atilde;o que ir&aacute; funcionar melhor para voc&ecirc;.
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',67.90),
      (140,'Crazy Glow','CRAZY','crazy-glow.jpg','Lentes de Contato Crazy Glow:
     
    As lentes de contato coloridas Crazy Glow, da Cosplay Universe, são indicadas para uso estético, ideais para uso artístico em eventos, shows, festas, entre outros. 
    Com sua capacidade de deixar os olhos acessos no escuro deixa seu visual ainda mais incrível. 
     
    Essas lentes são feitas de hidrogel com alto teor de água, mantendo os olhos sempre hidratados e permitindo a chegada de oxigênio aos olhos.
     
    As lentes Crazy possuem tecnologia de proteção dupla de revestimento. Por isso, os pigmentos não entram em contato direto com os olhos, garantindo visão segura durante todo tempo de uso.
     
    Por contarem com alta cobertura de tonalidade, são capazes de encobrir a cor original dos olhos, garantindo a fantasia perfeita.
     
     

     
    Benefícios das lentes Crazy Glow:
     
    ✔ Alto teor de água;
    ✔ Tecnologia de proteção dupla de revestimento;
    ✔ Pigmentação com alta cobertura.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Cores disponíveis:

     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',225.00),
      (141,'Kit Opti-Free Replenish','','kit-opti-free-replenish-300-ml-120-ml.jpg','Kit Opti-Free Replenish
    OPTI-FREE RepleniSH solu&ccedil;&atilde;o de desinfec&ccedil;&atilde;o multiprop&oacute;sito para lentes de contato que limpa, reidrata, enx&aacute;gua, desinfeta e conserva. Ret&eacute;m a hidrata&ccedil;&atilde;o, intensificando o conforto.
    OPTI-FREE RepleniSH SDMP permite que muitos usu&aacute;rios tenham vis&atilde;o mais clara ao final do dia. Quando uma lente de contato &eacute; mergulhada na solu&ccedil;&atilde;o OPTI-FREE RepleniSH SDMP, a superf&iacute;cie da lente &eacute; recondicionada por um sistema exclusivo denominado TearGlyde. TearGlyde permite que a superf&iacute;cie da lente retenha uma fina camada de umidade natural dos olhos, mantendo as lentes hidratadas por at&eacute; 14 horas &ndash; 6 horas a mais do que outras solu&ccedil;&otilde;es para lentes de contato!
    A solu&ccedil;&atilde;o OPTI-FREE RepleniSH SDMP para lentes de contato incorpora novos ingredientes a um sistema de desinfec&ccedil;&atilde;o que tem sido utilizado h&aacute; mais de 20 anos. A Alcon continua a desenvolver novas tecnologias para manuten&ccedil;&atilde;o dos novos tipos de lentes dispon&iacute;veis. Esse foco permitiu ao OPTI-FREE RepleniSH SDMP continuar a obter alto n&iacute;vel de desinfec&ccedil;&atilde;o contra bact&eacute;rias e fungos.
    Conte&uacute;do do Kit
    Frasco 300ml + Frasco 120ml + estojo para lentes de contato.
    *Lembre-se de que apenas o seu oftalmologista pode determinar a combina&ccedil;&atilde;o de lente de contato e solu&ccedil;&atilde;o que &eacute; correta para voc&ecirc;.
    Assista sobre as Solu&ccedil;&otilde;es Opti-Free
    &nbsp;
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',129.00),
      (142,'Crazy','CRAZY','crazy.jpg','Lentes de Contato Crazy
    As lentes de contato coloridas Crazy, da Cosplay Universe, são indicadas para uso estético, ideais para uso artístico em eventos, shows, festas, entre outros. 
    Essas lentes são feitas de hidrogel com alto teor de água, mantendo os olhos sempre hidratados e permitindo a chegada de oxigênio aos olhos.
    As lentes Crazy possuem tecnologia de proteção dupla de revestimento. Por isso, os pigmentos não entram em contato direto com os olhos, garantindo visão segura durante todo tempo de uso.
    Por contarem com alta cobertura de tonalidade, são capazes de encobrir a cor original dos olhos, garantindo a fantasia perfeita.
     
     

     
    Benefícios das lentes Crazy:
    ✔ Alto teor de água;
    ✔ Tecnologia de proteção dupla de revestimento;
    ✔ Pigmentação com alta cobertura.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Cores Disponíveis:

     

     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',169.90),
      (143,'Boston SIMPlus 120ml','','boston-simplus-multiac-o-120ml.jpg','Boston SIMPlus 120ml
    Solu&ccedil;&atilde;o de limpeza para lentes de contato r&iacute;gidas g&aacute;s-perme&aacute;veis.
    Caracter&iacute;sticas e Vantagens

    Ret&eacute;m Umidade, suavizando a intera&ccedil;&atilde;o das lentes com os olhos e promovendo maior conforto;
    Possui um sistema duplo de desinfec&ccedil;&atilde;o e remo&ccedil;&atilde;o de prote&iacute;nas;
    Facilita o manuseio das lentes de contato.

    Indica&ccedil;&otilde;es
    Desinfec&ccedil;&atilde;o qu&iacute;mica, limpeza, remo&ccedil;&atilde;o di&aacute;ria de prote&iacute;na, lubrifica&ccedil;&atilde;o, lavagem e armazenamento de lentes de contato r&iacute;gidas g&aacute;s-perme&aacute;veis.
    Apresenta&ccedil;&atilde;o (embalagem)
    Boston SIMPlus Solu&ccedil;&atilde;o Multia&ccedil;&atilde;o 120ml
    Benef&iacute;cios

    Mais conforto: Boston SIMPlus umidifica as lentes, suavizando o contato com os olhos;
    Vis&atilde;o mais n&iacute;tida: Boston SIMPlus possui agentes de limpeza que removem dep&oacute;sitos de prote&iacute;nas acumulados durante o uso;
    Mais sa&uacute;de: Boston SIMPlus elimina os microorganismos que possam acumular-se nas lentes de contato;
    Mais conveni&ecirc;ncia: Todo o cuidado que suas lentes de contato r&iacute;gidas precisam, em 1 s&oacute; produto.
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',92.00),
      (144,'Luminous Fun Animale','Luminous','luminous-fun-animale.jpg','Luminous Fun Animale
     
    Fabricadas com a mais moderna tecnologia, as lentes de contato Clear Fun oferecem hidratação e oxigenação incomparável, proporcionando máximo conforto visual para quem usa.
    Perfeitas para cosplays, festas a fantasia, carnaval ou quando e como mandar seu estado de espírito.
     

     
     
    Vantagens das lentes Luminous Fun Animale
     
    ✔ Alta permeabilidade de oxigênio.
    ✔ Não oferece efeitos colaterais.
    ✔ Tecnologia de encapsulamento: não permite que pigmentos coloridos entrem em contato com os olhos.
     
    Cores: Dragon, Feline, Lynx e Vipper.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',177.00),
      (145,'Freshlook One-Day','Freshlook ','lentes-de-contato-freshlook-1-day-sem-grau-56952.jpg','FreshLook One-Day
     
    As lentes de contato FreshLook® One-Day de uso diário são desenhadas para criar uma mudança de cor suave, completa e natural em seus olhos para ocasiões especiais.
     
    As lentes de contato coloridas FreshLook® One-Day são ideais para quem tem uma visão perfeita e deseja apenas mudar a aparência ou se divertir com as cores.
     
    Possui um padrão de cor, que mescla três cores em uma lente, permitindo aspecto natural. 
     
    Por ser uma lente de uso e descarte diário, proporciona mais saúde para seus olhos, evitando o acúmulo de resíduos e trazendo mais praticidade para o dia-a-dia.
     
     

     
     
    Vantagens da lente Freshlook One-Day:
     
    ✔ Proporciona um olhar impactante, brilhante, diferente e muito natural;
    ✔ Experimente conforto durante todo o dia;
    ✔ Não requer soluções nem cuidados especiais, já que são de descarte diário;
    ✔ Lentes novas e limpas a cada dia, mais saúde para seus olhos. 
     
    Quais problemas de visão elas corrigem?
    Não corrigem problemas de visão. São apenas de uso estético.
     
     
    Atenção: devido a diferentes lotes do fabricante, as lentes podem sofrer alteração na tonalidade da cor.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',242.90),
      (146,'Artelac Rebalance Gotas Umidificantes 10 ml','','artelac-rebalance-gotas-umidificantes-10ml.jpg','



    Artelac Rebalance&nbsp;
    &Eacute;&nbsp;o mais indicado para aliviar e atenuar os sintomas de olho seco e &eacute; compat&iacute;vel com lentes de contato.

    F&oacute;rmula exclusiva:&nbsp;0,15% hialuronato de s&oacute;dio + Nutriente Lacrimal.
    Al&iacute;vio duradouro com 3 a 5 gotas por dia!


    CARACTER&Iacute;STICAS E VANTAGENS



    Lubrifica&ccedil;&atilde;o instant&acirc;nea,


    F&aacute;cil de usar, bem tolerado e seguro;


    Cont&eacute;m hialuronato de s&oacute;dio, que garante m&aacute;xima hidrata&ccedil;&atilde;o e al&iacute;vio.



    &nbsp;

    COMO ARTELAC REBALANCE PODE AJUDAR OS SEUS OLHOS?














    Artelac Rebalance cont&eacute;m pol&iacute;meros duplos de Hialuronato de s&oacute;dio e PEG 8000, Pot&aacute;ssio, Magn&eacute;sio, S&oacute;dio, e Vitamina B12 que lubrificam, suprem e reequilibram o filme lacrimal ajudando a romper a onda de sintomas de olho seco e a promover um ambiente da superf&iacute;cie ocular saud&aacute;vel protegendo a c&oacute;rnea de danos.






    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',145.90),
      (147,'Luminous Fun Colorful','Luminous','luminous-fun-colorful.jpg','Luminous Fun Colorful
     
    Fabricadas com a mais moderna tecnologia, as lentes de contato Clear Fun oferecem hidratação e oxigenação incomparável, proporcionando máximo conforto visual para quem usa.
    Perfeitas para cosplays, festas a fantasia, carnaval ou quando e como mandar seu estado de espírito.
     
     

     
    ✔ Alta permeabilidade de oxigênio.
    ✔ Não oferece efeitos colaterais.
    ✔ Tecnologia de encapsulamento: não permite que pigmentos coloridos entrem em contato com os olhos.
     
    Cores: Blackout, Ice Look, Pink, Rubi, Sky Blue e Zombie.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',177.00),
      (148,'Natural','NATURAL','natural.jpg','
    Lentes de Contato Natural:
     
    As lentes de contato coloridas Natural, da Cosplay Universe, são ideais para quem deseja mudar a cor dos olhos sem necessidade de correção visual.
     
    Essas lentes, feitas de hidrogel, contam com a adição de monômeros hidrofílicos, que criam um polímero de alto teor de água, mantendo os olhos sempre úmidos e permitindo a chegada de oxigênio aos olhos.
     
    As lentes Natural possuem tecnologia especial de proteção dupla de revestimento. Isso significa que os pigmentos não entram em contato direto com os olhos, garantindo segurança para a visão.
     
    Suas cores tem alta cobertura de tonalidade, por isso são capazes de encobrir a cor original dos olhos.
     
    
    Benefícios da lente Natural:
     
    ✔ Alto teor de água;✔ Tecnologia de proteção dupla de revestimento;✔ Pigmentação com alta cobertura.
     
    Cores Disponíveis:

     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',169.90);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (149,'Biotrue One Day','Biotrue','lentes-de-contato-biotrue-oneday-64272.jpg','Lentes de Contato Biotrue One Day:
     
    As lentes de contato Biotrue One Day são lentes de descarte diário feitas com o material exclusivo hypergel. Esse material tem 78% de teor de água, valor correspondente ao teor retido pela córnea. Por isso, oferece uma sensação natural com conforto excepcional por até 16 horas.
    Fabricadas pela Bausch &amp; Lomb, essas lentes tem o design inspirado na biologia do olho humano, com uma superfície que proporciona um conforto excepcional.
    Oferecendo visão nítida e de qualidade, essas lentes ainda contam com filtro UV, protegendo os olhos da luz do sol.
     

     
     
    Vantagens da Lentes de Contato Biotrue One Day
     
    ✔ 78% de hidratação, oferecendo conforto por até 16 horas de uso;
    ✔ Feitas com hypergel que permite ótima oxigenação;
    ✔ Conta com proteção UV.
     
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',157.00),
      (150,'Renu Fresh 120ml','','renu-fresh-120ml-solucao-multiuso-64285.jpg','Renu Fresh 120ml
    Solu&ccedil;&atilde;o de limpeza para o cuidado di&aacute;rio das lentes de contato gelatinosas, incluindo silicone hidrogel.
    Caracter&iacute;sticas e Vantagens

    Ideal para pessoas que necessitam de praticidade e rapidez no cuidado das suas lentes de contato;
    Proporciona a hidrata&ccedil;&atilde;o da lente garantindo conforto durante o seu uso;
    Promove a desinfec&ccedil;&atilde;o e limpeza em 4 horas.

    Indica&ccedil;&atilde;o

    Limpa
    Desinfecta em 4 horas
    Conserva
    Lubrifica
    Hidrata
    Remove prote&iacute;nas

    Reunidos, todos esses benef&iacute;cios asseguram a melhor conserva&ccedil;&atilde;o poss&iacute;vel das suas lentes, proporcionando a sensa&ccedil;&atilde;o de usar lentes novas todos os dias at&eacute; o &uacute;ltimo dia do regime de uso de cada lente &ndash; em outras palavras,&nbsp;CONFORTO!
    Benef&iacute;cios

    Ideal para pessoas que necessitam de praticidade e rapidez no cuidado de suas lentes de contato;
    Proporciona melhor conforto e acuidade visual;
    Desinfec&ccedil;&atilde;o e limpeza em 4hrs.

    A&nbsp;Solu&ccedil;&atilde;o Multiuso Renu&reg;&nbsp;Fresh&nbsp;foi desenvolvida especialmente para voc&ecirc;, que se preocupa com a seguran&ccedil;a e o conforto oferecidos pelas suas lentes de contato gelatinosas, incluindo as de silicone hidrogel.
    Renu&reg;&nbsp;Fresh&nbsp;limpa, removendo as impurezas da superf&iacute;cie, enquanto atua para desprender e remover as prote&iacute;nas naturais das l&aacute;grimas - que podem ficar acumuladas e incrustadas nas lentes de contato, com potencial para causar desconforto e irrita&ccedil;&atilde;o. Al&eacute;m disso, a a&ccedil;&atilde;o desinfectante da Solu&ccedil;&atilde;o Renu&reg;&nbsp;Fresh elimina fungos e bact&eacute;rias das suas lentes.
    E, para manter o conforto di&aacute;rio durante o uso e a melhor conserva&ccedil;&atilde;o poss&iacute;vel durante o regime de uso de cada lente, a formula&ccedil;&atilde;o da&nbsp;solu&ccedil;&atilde;o Renu&reg;&nbsp;Fresh&nbsp;garante a lubrifica&ccedil;&atilde;o ideal para a melhor experi&ecirc;ncia na coloca&ccedil;&atilde;o e retirada de suas lentes de contato (e na movimenta&ccedil;&atilde;o natural delas durante o uso), enquanto as mant&eacute;m com o percentual adequado de hidrata&ccedil;&atilde;o e nas melhores condi&ccedil;&otilde;es de conserva&ccedil;&atilde;o, at&eacute; o &uacute;ltimo dia antes do descarte recomendado.
    S&atilde;o 6 benef&iacute;cios em 1 &uacute;nica solu&ccedil;&atilde;o: limpeza, desinfec&ccedil;&atilde;o, conserva&ccedil;&atilde;o, lubrifica&ccedil;&atilde;o, hidrata&ccedil;&atilde;o e remo&ccedil;&atilde;o de prote&iacute;nas de suas lentes de contato.
    Apresenta&ccedil;&atilde;o (embalagem)
    Renu Fresh Solu&ccedil;&atilde;o Multiuso 120ml&nbsp;

    Conhe&ccedil;a mais sobre as Solu&ccedil;&otilde;es Multiuso Bausch+Lomb
    &nbsp;

    &nbsp;
    Assista a campanha: Soro n&atilde;o &eacute; solu&ccedil;&atilde;o
    &nbsp;
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',39.00),
      (151,'Renu Fresh 60ml','','renu-freshr-60ml.jpg','Renu Fresh 60ml
    Solu&ccedil;&atilde;o de limpeza para o cuidado di&aacute;rio das lentes de contato gelatinosas, incluindo silicone hidrogel.
    Embalagem no tamanho ideal para levar na bolsa ou em viagens curtas!
    Caracter&iacute;sticas e Vantagens

    Ideal para pessoas que necessitam de praticidade e rapidez no cuidado das suas lentes de contato;
    Proporciona a hidrata&ccedil;&atilde;o da lente garantindo conforto durante o seu uso;
    Promove a desinfec&ccedil;&atilde;o e limpeza em 4 horas.

    Indica&ccedil;&atilde;o

    Limpa
    Desinfecta em 4 horas
    Conserva
    Lubrifica
    Hidrata
    Remove prote&iacute;nas

    Reunidos, todos esses benef&iacute;cios asseguram a melhor conserva&ccedil;&atilde;o poss&iacute;vel das suas lentes, proporcionando a sensa&ccedil;&atilde;o de usar lentes novas todos os dias at&eacute; o &uacute;ltimo dia do regime de uso de cada lente &ndash; em outras palavras,&nbsp;CONFORTO!
    Benef&iacute;cios

    Ideal para pessoas que necessitam de praticidade e rapidez no cuidado de suas lentes de contato;
    Proporciona melhor conforto e acuidade visual;
    Desinfec&ccedil;&atilde;o e limpeza em 4hrs.

    A&nbsp;Solu&ccedil;&atilde;o Multiuso Renu&reg;&nbsp;Fresh&nbsp;foi desenvolvida especialmente para voc&ecirc;, que se preocupa com a seguran&ccedil;a e o conforto oferecidos pelas suas lentes de contato gelatinosas, incluindo as de silicone hidrogel.
    Renu&reg;&nbsp;Fresh&nbsp;limpa, removendo as impurezas da superf&iacute;cie, enquanto atua para desprender e remover as prote&iacute;nas naturais das l&aacute;grimas - que podem ficar acumuladas e incrustadas nas lentes de contato, com potencial para causar desconforto e irrita&ccedil;&atilde;o. Al&eacute;m disso, a a&ccedil;&atilde;o desinfectante da Solu&ccedil;&atilde;o Renu&reg;&nbsp;Fresh elimina fungos e bact&eacute;rias das suas lentes.
    E, para manter o conforto di&aacute;rio durante o uso e a melhor conserva&ccedil;&atilde;o poss&iacute;vel durante o regime de uso de cada lente, a formula&ccedil;&atilde;o da&nbsp;solu&ccedil;&atilde;o Renu&reg;&nbsp;Fresh&nbsp;garante a lubrifica&ccedil;&atilde;o ideal para a melhor experi&ecirc;ncia na coloca&ccedil;&atilde;o e retirada de suas lentes de contato (e na movimenta&ccedil;&atilde;o natural delas durante o uso), enquanto as mant&eacute;m com o percentual adequado de hidrata&ccedil;&atilde;o e nas melhores condi&ccedil;&otilde;es de conserva&ccedil;&atilde;o, at&eacute; o &uacute;ltimo dia antes do descarte recomendado.
    S&atilde;o 6 benef&iacute;cios em 1 &uacute;nica solu&ccedil;&atilde;o: limpeza, desinfec&ccedil;&atilde;o, conserva&ccedil;&atilde;o, lubrifica&ccedil;&atilde;o, hidrata&ccedil;&atilde;o e remo&ccedil;&atilde;o de prote&iacute;nas de suas lentes de contato.
    Apresenta&ccedil;&atilde;o (embalagem)
    Renu Fresh Solu&ccedil;&atilde;o Multiuso 60ml &ndash; Ideal para Viagens

    Conhe&ccedil;a mais sobre as Solu&ccedil;&otilde;es Multiuso Bausch+Lomb
    &nbsp;

    &nbsp;
    &nbsp;
    Assista a campanha: Soro n&atilde;o &eacute; solu&ccedil;&atilde;o
    &nbsp;
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',27.00),
      (152,'Estojo 3D - Porco','','estojo-3d-porquinho-57091.jpg','Os estojos 3D em formato de animais s&atilde;o apresentados em outros 5 modelos:
    - Elefante (Amarelo)
    - Hipop&oacute;tamo (Verde Claro)
    - Peixe (Lil&aacute;s)
    - Sapo (Verde)
    - Urso (Cinza)
    &nbsp;
    &nbsp;
    &nbsp;
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',79.90),
      (153,'Estojo Joaninha','','estojo-joaninha-look-vision-64291.jpg','preencher',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.00),
      (154,'Estojo Bola de Baseball','','estojo-bola-de-baseball.jpg','preencher',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.00),
      (155,'Estojo Lockit Convenience C/Pinca - Branco','','estojo-lockit-convenience-c-pinca-branco.jpg','Tamanho ideal para carregar tudo o que precisa para sua lente de contato

    Kit contém:

    - Um porta estojo com espelho
    - Um estojo Top Line com anel de vedação
    - Um frasco para solução de limpeza e conservação
    - Um dos opcionais: pinça, pegador, ventosa extratora ou ventosa escleral.

    Cores disponíveis:
    Branco, Verde e Rosa',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',65.00),
      (156,'Estojo Pocket Advance - Rosa','','estojo-pocket-advance-rosa.jpg','A forma inteligente e compacta de carregar e proteger as lentes de contato o dia inteiro.

    Kit contém:

    - Um porta estojo com espelho
    - Um estojo Top Line com anel de vedação

    Tamanho ideal para ser carregado. Protege seu estojo e facilita a remoção e colocação das lentes em qualquer lugar.

    Cores disponíveis: 
    Verde, Rosa e Branco',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',45.90),
      (157,'Estojo e-lens Galáxia','','estojo-e-lens-galaxia.jpg','preencher',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',29.90),
      (158,'Estojo Transparente Azul - Look Vision','','estojo-transparente-azul-look-vision.jpg','preencher',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',5.90);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (159,'Estojo Bola de Tênis','','estojo-bola-de-tenis.jpg','preencher',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.90),
      (160,'Estojo Pocket PP Quadrado - Branco','','estojo-pocket-pp-quadrado-branco.jpg','preencher',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',17.00),
      (161,'Estojo Lockit Convenience C/Pinca - Rosa','','estojo-lockit-convenience-c-pinca-rosa.jpg','Tamanho ideal para carregar tudo o que precisa para sua lente de contato

    Kit contém:

    - Um porta estojo com espelho
    - Um estojo Top Line com anel de vedação
    - Um frasco para solução de limpeza e conservação
    - Um dos opcionais: pinça, pegador, ventosa extratora ou ventosa escleral.

    Cores disponíveis:
    Branco, Verde e Rosa',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',65.00),
      (162,'Estojo Pocket Top Line - Rosa','','estojo-pocket-top-line-rosa.jpg','O Par Perfeito para sua lente de contato

    Kit contém:

    - Um porta estojo com espelho
    - Um estojo Top Line com anel de vedação (para todos os tipos de lentes, inclusive a escleral)
    - Um opcional: - Pinça pequena; ou Pegador de lentes gelatinosa; ou Ventosa Extratora; ou Ventosa Escleral.

    Cores disponíveis:
    Verde, Rosa e Branco',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',55.90),
      (163,'Estojo Look Vision Azul Royal','','estojo-look-vision-cor-azul-royal.jpg','Estojo para Lentes de Contato GELATINOSA ou RÍGIDA.

    * Economia, proteção e segurança para as lentes de contato.

    O estojo foi desenhado com suaves estrias para que as lentes não colem no fundo e limitar a quantidade de solução a ser colocada, evitando desperdícios. Suas bordas arredondadas evitam que as lentes rasguem ou risquem ao serem retiradas do estojo.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',9.00),
      (164,'Estojo Ilusões','','estojo-ilusoes-look-vision-64290.jpg','preencher',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.00),
      (165,'Estojo Look Vision Azul Claro','','estojo-look-vision-56970.jpg','Estojo para Lentes de Contato GELATINOSA ou RÍGIDA.

    * Economia, proteção e segurança para as lentes de contato.

    O estojo foi desenhado com suaves estrias para que as lentes não colem no fundo e limitar a quantidade de solução a ser colocada, evitando desperdícios. Suas bordas arredondadas evitam que as lentes rasguem ou risquem ao serem retiradas do estojo.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.90),
      (166,'Estojo Single Clear - Transparente','','estojo-single-clear-transparente.jpg','Estojo com proteção dupla para lentes de contato rígida ou gelatinosa

    Capa dobrável no próprio corpo do estojo.

    Dobradiça super resistente, estojo que cabe no bolso, tamanho ideal, leve e fácil de ser carregado.

    Cores disponíveis: Verde, Azul, Branco e Transparente',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',29.90),
      (168,'Luminous Fun Sinister','Luminous','luminous-fun-sinister.jpg','Luminous Fun Sinister
     
    Fabricadas com a mais moderna tecnologia, as lentes de contato Clear Fun Sinister oferecem hidratação e oxigenação incomparável, proporcionando máximo conforto visual para quem usa.
    Perfeitas para cosplays, festas a fantasia, carnaval ou quando e como mandar seu estado de espírito.
     
     
     

     
     
    Vantagens das lentes Luminous Fun Sinister
     
    ✔ Alta permeabilidade de oxigênio.
    ✔ Não oferece efeitos colaterais.
    ✔ Tecnologia de encapsulamento: não permite que pigmentos coloridos entrem em contato com os olhos.
     
    - Cores: Cannibal, Crepúsculo, Lobisomem e Voltagem.
     
    Como Cuidar destas Lentes de Contato:
     
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;
    - Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',177.00),
      (169,'Optogel Tórica Color - Especial','Optogel','optogel-torica-color-especial.jpg','Lentes de contato Optogel Tórica Color:
     
    _____________________________
     
    ATENÇÃO: LENTE SOB ENCOMENDA
    Após a compra da lente, é necessário o envio da receita  e o exame de TOPOGRAFIA ou CERATOMETRIA. Caso Tenta alguma dificuldade no envio no ato da compra, por favor enviar pelo Fale Conosco.
     
    IMPORTANTE:
     
    O fabricante não aceita cancelamentos e devoluções para troca deste produto. Exceção somente para defeito de fabricação, comprovados após análise técnica.Em caso de dúvidas, entre em contato conosco.
     
    CENTRAL DE RELACIONAMENTO: 
     
    Atendimento de Segunda a Sexta-feira, das 9h às 17h(Exceto Feriados)
    Telefone: (11) 4873-2173
     
    _____________________________
     
     
     
    As lentes de contato Optogel Tórica Color são lentes de contato gelatinosas coloridas indicadas para astigmatismo corneanos e residuais.
     
    Indicadas para usuários que buscam correção sem abrir mão do conforto com estilo.
     

    Benefícios da lente Optogel Tórica Color:
     
    ✔ Proteção UV;
    ✔ 55% de hidratação proporcionando maior conforto;
    ✔ Textura suave que permite oxigenação na superfície ocular.
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Especificações:
    A Optogel Tórica Color Especial atende do grau;

    -15.50 a -20.00 e do +12.50 a +20.00, com cilindro até -5.00.
    0.00 a 20.00 (+/-) com o cilindro acima de -5.25

    Observação: Se as especificações não atenderem às suas necessidades CLIQUE AQUI!',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',1237.00);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (170,'Estojo Look Vision Amarela','','estojo-bolas-look-vision-64289.jpg','Estojo para Lentes de Contato GELATINOSA ou RÍGIDA.

    * Economia, proteção e segurança para as lentes de contato.

    O estojo foi desenhado com suaves estrias para que as lentes não colem no fundo e limitar a quantidade de solução a ser colocada, evitando desperdícios. Suas bordas arredondadas evitam que as lentes rasguem ou risquem ao serem retiradas do estojo.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.90),
      (171,'Estojo Look Vision Verde Claro','','estojo-look-vision-verde-claro.jpg','Estojo para Lentes de Contato GELATINOSA ou RÍGIDA.

    * Economia, proteção e segurança para as lentes de contato.

    O estojo foi desenhado com suaves estrias para que as lentes não colem no fundo e limitar a quantidade de solução a ser colocada, evitando desperdícios. Suas bordas arredondadas evitam que as lentes rasguem ou risquem ao serem retiradas do estojo.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.99),
      (172,'Estojo Emotions','','estojo-emotions.jpg','preencher',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.90),
      (173,'Estojo Bola de Basquete','','estojo-bola-de-basquete.jpg','preencher',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.00),
      (174,'Estojo Single Clear - Branco','','estojo-single-clear-branco.jpg','Estojo com proteção dupla para lentes de contato rígida ou gelatinosa

    Capa dobrável no próprio corpo do estojo.

    Dobradiça super resistente, estojo que cabe no bolso, tamanho ideal, leve e fácil de ser carregado.

    Cores disponíveis: Verde, Azul, Branco e Transparente',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',29.90),
      (175,'Estojo Pocket Advance - Branco','','estojo-pocket-advance-branco.jpg','A forma inteligente e compacta de carregar e proteger as lentes de contato o dia inteiro.

    Kit contém:

    - Um porta estojo com espelho
    - Um estojo Top Line com anel de vedação

    Tamanho ideal para ser carregado. Protege seu estojo e facilita a remoção e colocação das lentes em qualquer lugar.

    Cores disponíveis: 
    Verde, Rosa e Branco',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',45.00),
      (176,'Estojo Look Vision Verde Bandeira','','estojo-look-vision-cor-verde-bandeira.jpg','Estojo para Lentes de Contato GELATINOSA ou RÍGIDA.

    * Economia, proteção e segurança para as lentes de contato.

    O estojo foi desenhado com suaves estrias para que as lentes não colem no fundo e limitar a quantidade de solução a ser colocada, evitando desperdícios. Suas bordas arredondadas evitam que as lentes rasguem ou risquem ao serem retiradas do estojo.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.90),
      (177,'Ultra One Day','Ultra One Day','ultra-one-day.jpg','Lentes de contato ULTRA One Day®
     
    A primeira lente a unir conforto, saúde ocular e alta qualidade visual.
     
    As lentes de contato ULTRA One Day®, fabricadas pela pioneira Bausch &amp; Lomb, são lentes de descarte diário ideais para quem passa longas horas em frente às telas e acaba piscando menos durante o dia, o que diminui a hidratação dos olhos.
     
    Essas lentes possuem a tecnologia MoistureSeal™ que mantém 95% de umidade por até 16 horas, além de ter alto nível de oxigenação, mantendo os olhos hidratados e confortáveis o dia todo.
     
    As lentes de contato ULTRA One Day® são ótimas para novos usuários, sendo fáceis de colocar e se adaptar, e podem ser usadas todos os dias do mês, com descarte diário.
     

    Vantagens da Lente de Contato ULTRA One Day®
     
    ✔ Hidratação por até 16 horas por dia
    ✔ Ideais para quem passa muito tempo em frente a telas
    ✔ Com tecnologia MoistureSeal™ que mantem 95% da umidade dos olhos
     ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',177.00),
      (178,'Estojo Bola De Futebol','','estojo-bola-de-futebol.jpg','preencher',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.00),
      (179,'Estojo Look Vision Rosa Claro','','estojo-look-vision-cor-rosa-claro.jpg','Estojo para Lentes de Contato GELATINOSA ou RÍGIDA.

    * Economia, proteção e segurança para as lentes de contato.

    O estojo foi desenhado com suaves estrias para que as lentes não colem no fundo e limitar a quantidade de solução a ser colocada, evitando desperdícios. Suas bordas arredondadas evitam que as lentes rasguem ou risquem ao serem retiradas do estojo.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.99);
    INSERT INTO public.produto (id,"name",fabricante,imagem,descricao,deleted_at,created_at,updated_at,preco) VALUES
      (180,'Estojo Look Vision Vermelho','','estojo-look-vision-cor-vermelho.jpg','Estojo para Lentes de Contato GELATINOSA ou RÍGIDA.

    * Economia, proteção e segurança para as lentes de contato.

    O estojo foi desenhado com suaves estrias para que as lentes não colem no fundo e limitar a quantidade de solução a ser colocada, evitando desperdícios. Suas bordas arredondadas evitam que as lentes rasguem ou risquem ao serem retiradas do estojo.',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',7.99),
      (182,'Sclera Especial','SCLERA','sclera-especial.jpg','Lentes de Contato Sclera Especial
     
    As lentes de contato coloridas Sclera, da Cosplay Universe, são ideais para uso artístico em eventos, shows, festas e não possuem grau.
     
    Essas lentes são feitas de hidrogel com alto teor de água e mantendo os olhos sempre hidratados. Além disso, contam com permeabilidade ao oxigênio, oferecendo mais conforto.
     
    As lentes de contato Sclera possuem 22mm de diâmetro, sendo maiores que as lentes convencionais. Por isso, dão a impressão de íris aumentada sem prejudicar a nitidez da visão, sendo um diferencial para fantasias.
     
    Devido à tecnologia de proteção dupla de revestimento, os pigmentos das lentes não entram em contato direto com os olhos, garantindo visão segura durante todo tempo de uso.
     
    Por contarem com alta cobertura de tonalidade, são capazes de encobrir a cor original dos olhos, garantindo o visual desejado.
     
     

     
    Benefícios das lentes Sclera Especial:
     
    ✔ Alto teor de água
    ✔ Tecnologia de proteção dupla de revestimento
    ✔ Pigmentação com alta cobertura
    ✔ Diâmetro maior que lentes convencionais
     
    Como Cuidar destas Lentes de Contato:
    - Crie o hábito de limpá-las todos os dias e as substitua no prazo recomendado pelo fabricante;- Siga as instruções do seu oftalmologista e da embalagem do produto;- Guarde suas lentes em local adequado e limpe o estojo regularmente;- Use produtos que higienizam da forma correta e que sejam compatíveis com elas.
     
    Cor Disponível:
    ',NULL,'2023-09-13 14:05:01.379679','2023-09-13 14:05:01.379679',612.00);

  COMMIT;
EOSQL

