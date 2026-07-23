Function Main()
    Local aDias   := {"Domingo", "Segunda-Feira", "Terca-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira", "Sabado"}
    Local nDia    := 0

    nDia := LerDiaValido()

    Qout("O dia " + Alltrim(Str(nDia)) + " corresponde a: " + aDias[nDia])

Return Nil

Function LerDiaValido()
    Local cValor := ""
    Local nValor := 0

    While .T.
        Accept "Digite um numero da semana: " To cValor
        nValor := Val(cValor)

        If nValor >= 1 .AND. nValor <= 7
            Exit
        EndIf

        Qout("Numero invalido! Digite um valor entre 1 e 7.")
    EndDo

Return nValor
