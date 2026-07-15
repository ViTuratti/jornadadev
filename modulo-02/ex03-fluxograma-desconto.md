Exercício 3 — Fluxograma
Monte um fluxograma para o seguinte problema:

“Uma loja dá desconto de 10% para compras acima de R$ 100. Leia o valor da compra e
mostre o valor final a pagar.”

Dica: use o losango para a decisão ( Valor > 100? ) com os dois caminhos Sim e Não.

----------------------------------------------------------------------------------------

```mermaid
flowchart TD
    A([Início]) --> B[/Leia valor da compra/]
    B --> C{Valor > 100?}
    C -- Sim --> D[total = valor * 0.90]
    C -- Não --> E[total = valor]
    D --> F[/Escreva total/]
    E --> F
    F --> G([Fim])
```
