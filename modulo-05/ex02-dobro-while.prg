Function Main()
    Local cValor := ""
    Local nValor := 0

    While .T.
        Accept "Digite um valor: " To cValor
        nValor := Val(cValor)
        If nValor <= 0
            Exit
        EndIf
        Qout("O dobro de " + Str(nValor) + " é " + alltrim(Str(nValor * 2)))
    EndDo

    Qout("Valor inv lido.")

Return Nil
