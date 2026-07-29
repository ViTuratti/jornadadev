a. Por que existe o campo A1_FILIAL na tabela SA1?

O campo A1_FILIAL existe na tabela SA1 para identificar a qual filial aquele registro de cliente pertence dentro do ambiente Protheus.
O Protheus é um sistema que permite trabalhar com várias filiais dentro da mesma base de dados. Dessa forma, o campo de filial é utilizado para separar e organizar os registros, garantindo que cada filial visualize e manipule somente as informações que pertencem ao seu contexto de acordo com o compartilhamento da tabela. Há casos que as tabelas são compartilhadas entre filiais e então esse campo destinado a filial fica em branco, dando a entender que todas possuem o mesmo cadastro.
Todas as tabelas do Protheus, incluindo a tabela customizada ZA1 criada, precisam possuir o campo de filial para manter o padrão de funcionamento do sistema. Esse campo também é utilizado na composição dos índices das tabelas, ajudando a identificar unicamente os registros e evitando conflitos entre informações de filiais diferentes.

-------------------------------------------------------------------------------------------------------------------------

b. Qual a relação da função xFilial() com o campo de filial?

A função xFilial() é utilizada no Protheus para retornar automaticamente o código da filial atual conforme o ambiente em que o usuário está trabalhando.
Ela deve ser utilizada nos programas para que o sistema busque a filial correta de forma dinâmica, respeitando a configuração do usuário e do ambiente.

