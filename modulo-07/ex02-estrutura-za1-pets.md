a. Campos da ZA1

| Campo       | Tipo           | Tamanho | Descrição        | Real/Virtual |
|-------------|----------------|:--------:|------------------|--------------|
| ZA1_FILIAL  | Caractere (C)  | 2        | Filial           | Real         |
| ZA1_COD     | Caractere (C)  | 6        | Código PET       | Real         |
| ZA1_NOME    | Caractere (C)  | 30       | Nome do pet      | Real         |
| ZA1_RACA    | Caractere (C)  | 30       | Raça do pet      | Real         |
| ZA1_CLI     | Caractere (C)  | 6        | Cod Cliente      | Real         |
| ZA1_LOJACL  | Caractere (C)  | 4        | Loja do cliente  | Real         |
| ZA1_NOMECL | Caractere (C)  | 60       | Nome do cliente  | Virtual      |
| ZA1_NASC    | Data (D)       | 8        | Data de nascimento do pet | Real |

--------------------------------------------------------------------------------------------------------

b. Que índice faria sentido para a ZA1?

ZA1_FILIAL + ZA1_COD + ZA1_NOME

Esse índice permite localizar rapidamente um pet pelo seu código dentro da filial correspondente. A justificativa é semelhante à de uma lista telefônica: em vez de procurar registro por registro, o sistema utiliza o índice para encontrar a informação de forma muito mais rápida. Além disso, o campo ZA1_COD é único para cada pet, ou seja, mesmo que existam pets com o mesmo nome e pertencentes ao mesmo cliente, cada um possuirá um código próprio, garantindo a identificação única de cada cadastro.

--------------------------------------------------------------------------------------------------------

c. Por que o prefixo da tabela é Z?

O prefixo Z é a convenção do Protheus para identificar tabelas customizadas de cliente, ou seja, tabelas que não vêm de fábrica com o ERP, mas que foram criadas para atender uma necessidade específica de um cliente ou de um caso de uso particular. Isso diferencia claramente, só pelo nome, uma tabela padrão do sistema de uma tabela customizada. O mesmo cenário seguimos para campos customizados em tabelas padrões, geralmente iniciamos eles com "x" exemplo: SA1_XCUSTOM.

--------------------------------------------------------------------------------------------------------

d. Por que os campos começam com ZA1_?

Porque a convenção do Protheus é: nome do campo = prefixo da tabela + _ + nome do campo. Isso vale tanto para tabelas padrão quanto para tabelas customizadas. Essa regra existe para que, só olhando o nome de um campo em qualquer lugar do sistema, em uma tela, em um relatório, em uma linha de código seja possível saber imediatamente de qual tabela ele pertence, sem precisar consultar a estrutura ou o dicionário para descobrir.