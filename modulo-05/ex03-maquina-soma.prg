Function Main()
    Local cValor  := ""
    Local nValor  := 0
    Local nTotal  := 0
    Local nQtd    := 0

    While .T.
        Accept "Digite um valor ou 0 para encerrar: " To cValor
        nValor := Val(cValor)

        If nValor == 0
            Exit
        EndIf

        nTotal += nValor
        nQtd++
    EndDo

    Qout("--------------------------------")
    Qout("Soma total: " + Alltrim(Str(nTotal)))
    Qout("Quantidade de valores: " + Alltrim(Str(nQtd)))

Return Nil
