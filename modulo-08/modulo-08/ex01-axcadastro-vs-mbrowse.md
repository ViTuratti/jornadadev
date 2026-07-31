a. Uso o AxCadastro quando preciso de um CRUD funcionando rápido, com pouquíssimo código. É ideal para protótipos, tabelas simples ou telas de uso interno onde não há necessidade de muita personalização visual. 
Exemplo: o cadastro inicial de Pets (ZA1) que fizemos em aula, só para validar que a estrutura da tabela e a amarração com a SA1 estavam funcionando.

Uso o mBrowse quando o cadastro vai para produção e precisa de mais controle sobre a experiência do usuário — legendas coloridas, filtros dinâmicos, colunas customizadas. 
Exemplo: uma tela de Pets onde o usuário precisa visualizar rapidamente, pela cor da legenda, quais pets fazem aniversário hoje ou têm cadastro desatualizado isso só o mBrowse entrega, com o aColors.

--------------------------------------------------------------------------------------------------------------------------------

b. Legendas coloridas por regra de negócio (aColors) — pinta as linhas do browse conforme condições customizadas (ex: vermelho para atrasado, verde para normal).
Filtros dinâmicos — permite que o próprio usuário filtre os dados na tela (lNoMnuFilter = .F.), ou já abrir a tela com um filtro pré-definido (cExprFilTop).
Colunas customizadas (aColunas) — dá para escolher exatamente quais campos aparecem no browse, em qual ordem e com qual título, em vez de depender só do que está configurado no SX3.

--------------------------------------------------------------------------------------------------------------------------------

c. Porque as regras do aColors são avaliadas de cima para baixo, e a primeira que for verdadeira já define a cor da linha — as demais nem são checadas depois disso. Como .T. é sempre verdadeiro, se ela ficasse em primeiro lugar, todas as linhas ficariam com essa cor, e as outras regras nunca seriam alcançadas. Colocando .T. por último, ela funciona como uma "cor padrão" — só se aplica às linhas que não caíram em nenhuma das condições específicas anteriores.

--------------------------------------------------------------------------------------------------------------------------------

d. Os dois conseguem exibir o nome do cliente na tela, mas funcionam de formas diferentes:
Campo Virtual — o valor é calculado na hora da exibição, toda vez que o registro é lido (via POSICIONE na relação do SX3). Ele não é gravado no banco de dados, não ocupa espaço na tabela, e se o nome do cliente mudar na SA1 depois, o campo virtual vai refletir a mudança automaticamente na próxima exibição, porque é recalculado sempre.

Gatilho (SX7) — o valor é preenchido no momento em que o usuário sai do campo (ex: ao sair de ZA1_CLI, o gatilho dispara e preenche ZA1_NOMECL), e esse valor é gravado de fato no banco (é um campo Real). Se o nome do cliente mudar depois na SA1, o valor gravado na ZA1 não vai atualizar sozinho — ficaria desatualizado até alguém editar o registro de novo.