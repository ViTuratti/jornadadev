/*
Exercício 4 — Diferença entre = e ==

Os operadores = e == possuem comportamentos diferentes
quando utilizados para comparar valores:
O operador = faz uma comparação flexível entre strings, permitindo que
uma delas corresponda ao início da outra.
Já o operador == realiza uma comparação exata, ou seja, as duas strings
devem possuir exatamente o mesmo conteúdo e o mesmo tamanho para que o
resultado seja verdadeiro.
Na função, "Harbour" começa com "Harb". Por isso, utilizando =,
o resultado será verdadeiro (.T.). Entretanto, utilizando ==, o resultado
será falso (.F.), pois as duas strings não são exatamente iguais.
*/

Function Main()

    QOut("Comparando utilizando =")
    QOut('"Harbour" = "Harb" -> ' + IIf("Harbour" = "Harb", ".T.", ".F."))
    QOut(" ")

    QOut("Comparando utilizando ==")
    QOut('"Harbour" == "Harb" -> ' + IIf("Harbour" == "Harb", ".T.", ".F."))

Return Nil
