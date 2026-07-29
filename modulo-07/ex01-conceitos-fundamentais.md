a. Qual é a função do AppServer?

O AppServer é o serviço que processa toda a lógica do Protheus. Ele recebe as requisições do SmartClient, executa o código ADVPL e conversa com o banco de dados. É como se fosse o cérebro que fica rodando no servidor, enquanto o SmartClient é só a tela que o usuário vê na própria máquina.

--------------------------------------------------------------------------------------------------------

b. O que é o RPO?

O RPO é o repositório de objetos onde o código ADVPL fica compilado e armazenado, pronto para ser executado pelo AppServer. É parecido com o que o hbmk2 fazia gerando um .exe em Harbour, mas em vez de um executável único, o Protheus organiza tudo dentro desse repositório. Nos ambientes atuais existe o RPO nativo e o RPO custom que separa todos os fontes customizados dos que vem por padrão. Além disso voce pode criar varios RPOs para testar versões de fontes em um ambiente real sem interferir no seu RPO "principal".

--------------------------------------------------------------------------------------------------------

c. Para que serve o Configurador (SIGACFG)?

É o "painel de controle" do Protheus, onde se configuram tabelas, campos, permissões, adiciona novas rotinas no menu, e estrutura o dicionário de dados tudo sem escrever código. É por ele que se torna um campo obrigatório, adiciona no browser, cria gatilhos, consultas padrões, cria um campo novo, se define permissões por usuário e cadastra tabelas customizadas. Em resumo é pelo Configurador que você consegue realizar as alterações para usuarios, telas, menus e tabelas do protheus.

--------------------------------------------------------------------------------------------------------

d. Qual a diferença entre campo Real e campo Virtual no SX3?

Um campo Real existe fisicamente na tabela, ele ocupa espaço de armazenamento e é gravado junto com o registro. 
Um campo Virtual não é gravado no banco, ele existe só na tela ou no dicionário para exibir uma informação calculada, formatada ou vinda de outra tabela, sem ocupar espaço físico na estrutura da tabela. 