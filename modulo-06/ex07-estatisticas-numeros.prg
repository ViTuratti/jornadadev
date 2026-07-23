Function Main()
    Local aNumeros := {}
    Local nSoma    := 0
    Local nMedia   := 0
    Local nI       := 0

    aNumeros := LerNumeros(10)

    nSoma  := SomarArray(aNumeros)
    nMedia := nSoma / Len(aNumeros)

    ASort(aNumeros)

    Qout("--------------------------------")
    Qout("=== Numeros em ordem crescente ===")
    For nI := 1 To Len(aNumeros)
        Qout(Alltrim(Str(aNumeros[nI])))
    Next nI

    Qout("--------------------------------")
    Qout("Soma  : " + Alltrim(Str(nSoma, 10, 2)))
    Qout("Media : " + Alltrim(Str(nMedia, 10, 2)))
    Qout("Menor : " + Alltrim(Str(aNumeros[1], 10, 2)))
    Qout("Maior : " + Alltrim(Str(aNumeros[Len(aNumeros)], 10, 2)))

Return Nil

Function LerNumeros(nQtd)
    Local aValores := {}
    Local cValor   := ""
    Local nValor   := 0
    Local nI       := 0

    For nI := 1 To nQtd
        Accept "Digite o numero " + Alltrim(Str(nI)) + ": " To cValor
        nValor := Val(cValor)
        AAdd(aValores, nValor)
    Next nI

Return aValores

Function SomarArray(aValores)
    Local nI     := 0
    Local nTotal := 0

    For nI := 1 To Len(aValores)
        nTotal += aValores[nI]
    Next nI

Return nTotal
