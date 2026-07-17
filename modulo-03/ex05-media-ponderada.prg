Function Main()

    Local cNota
    Local nNota1 := 0
    Local nNota2 := 0
    Local nNota3 := 0
    Local nNota4 := 0
    Local nMedia := 0

    ACCEPT "Digite a primeira nota: " TO cNota
    nNota1 := Val(cNota)

    ACCEPT "Digite a segunda nota: " TO cNota
    nNota2 := Val(cNota)

    ACCEPT "Digite a terceira nota: " TO cNota
    nNota3 := Val(cNota)

    ACCEPT "Digite a quarta nota: " TO cNota
    nNota4 := Val(cNota)

    nMedia := ((nNota1 * 1) + (nNota2 * 2) + (nNota3 * 3) + (nNota4 * 4)) / (1+2+3+4)

    QOut("")
    QOut("A média ponderada das notas é: " + AllTrim(Str(nMedia, 10, 2)))

Return Nil
