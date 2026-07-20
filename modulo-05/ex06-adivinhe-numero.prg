Function Main()
    Local nSecreto   := 0
    Local cPalpite   := ""
    Local nPalpite   := 0
    Local nI         := 0
    Local lAcertou   := .F.

    nSecreto := HB_RandomInt(1, 100)

    Qout("Vamos Jogar!")
    Qout("Pensei em um numero entre 1 e 100. Voce tem 7 tentativas!")

    For nI := 1 To 7

        While .T.
            Accept "Tentativa " + Alltrim(Str(nI)) + " - Palpite: " To cPalpite
            nPalpite := Val(cPalpite)

            If nPalpite >= 1 .AND. nPalpite <= 100
                Exit
            EndIf

            Qout("Palpite invalido! Digite um numero entre 1 e 100.")
        EndDo

        If nPalpite == nSecreto
            lAcertou := .T.
            Exit
        ElseIf nPalpite < nSecreto
            Qout("O numero secreto e MAIOR que " + Alltrim(Str(nPalpite)))
        Else
            Qout("O numero secreto e MENOR que " + Alltrim(Str(nPalpite)))
        EndIf

    Next nI

    Qout("--------------------------------")
    If lAcertou
        Qout("Parabens! Voce acertou o numero " + Alltrim(Str(nSecreto)) + " em " + Alltrim(Str(nI)) + " tentativa(s)!")
    Else
        Qout("Suas tentativas acabaram. O numero secreto era " + Alltrim(Str(nSecreto)) + ".")
    EndIf

Return Nil
