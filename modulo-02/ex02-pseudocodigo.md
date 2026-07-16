Exercício 2 — Pseudocódigo
Escreva em pseudocódigo um algoritmo para cada item:
a. Calcular a área de um retângulo (base × altura)
b. Verificar se um número é par ou ímpar
c. Encontrar o maior entre três números
Dica: use as palavras Leia , Escreva , Se ... Senão e o operador ← para atribuir.

---------------------------------------------------------------------------------

a.  
```text
Inicio
    Leia nBase
    Leia nAltura
    nArea ← nBase * nAltura
    Escreva nArea
Fim
```

b.
```text
Inicio
    Leia nNumero
    Se nNumero % 2 = 0 
        Escreva Par
    Senão 
        Escreva Ímpar
    Fim Se
Fim
```

c. 
```text
Inicio
    Leia nNum1
    Leia nNum2
    Leia nNum3
    nMaior ← nNum1
    Se nNum2 > nNum1
        nMaior ← nNum2
    Fim Se
    Se nNum3 > nMaior
        nMaior ← nNum3
    Fim Se
    Escreva nMaior
Fim
```

