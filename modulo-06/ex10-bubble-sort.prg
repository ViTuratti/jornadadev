// ============================================
// NOME: ex10-bubble-sort.prg
// DESCRICAO: implementacao manual do Bubble Sort (sem ASORT)
// ============================================

Function Main()
    Local aNumeros := {}
    Local nI       := 0

    aNumeros := LerNumeros(10)

    Qout("")
    Qout("=== Array enviado ===")
    ExibirArray(aNumeros)

    BubbleSort(aNumeros)

    Qout("")
    Qout("=== Array ordenado ===")
    ExibirArray(aNumeros)

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

Function BubbleSort(aVetor)
    Local nI, nJ, nTemp

    For nI := 1 To Len(aVetor) - 1
        For nJ := 1 To Len(aVetor) - nI
            If aVetor[nJ] > aVetor[nJ + 1]
                nTemp         := aVetor[nJ]
                aVetor[nJ]    := aVetor[nJ + 1]
                aVetor[nJ + 1] := nTemp
            EndIf
        Next nJ
    Next nI

Return Nil

Function ExibirArray(aVetor)
    Local nI := 0

    For nI := 1 To Len(aVetor)
        Qout(Alltrim(Str(aVetor[nI])))
    Next nI

Return Nil
