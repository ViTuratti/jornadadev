Exercício 4 — Refinamento sucessivo
Aplique a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema:

“Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o
subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a
pagar.”

Entregue dois níveis: o Nível 1 (visão geral, 3–4 passos) e o Nível 2 (cada passo detalhado).

----------------------------------------------------------------------------------------------

Nível 1 — visão geral:

```text
Início
    Registrar itens da compra
    Calcular subtotal
    Aplicar desconto
    Mostrar total a pagar
Fim
```

Nível 2 — detalhando cada parte:

```text
Início
Registrar itens da compra:
    Repetir até que não haja mais itens:
        Ler nome do item
        Ler preço do item
        Somar preço ao Subtotal

Calcular subtotal:
    Subtotal ← soma dos preços de todos os itens registrados

Aplicar desconto:
    Se possui cartão fidelidade
        Total ← Subtotal * 0.95
    Senão
        Total ← Subtotal
    Fim Se

Mostrar total a pagar:
    Escrever "Total a pagar: R$ " + Total
Fim
```

