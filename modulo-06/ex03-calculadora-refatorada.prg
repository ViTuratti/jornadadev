Function Main()
    Local nValor1, nValor2, cOperacao, nResultado

    nValor1   := LerNumero("Digite o primeiro valor: ")
    nValor2   := LerNumero("Digite o segundo valor: ")
    cOperacao := LerOperacao()

    If Calcular(nValor1, nValor2, cOperacao, @nResultado)
        MostrarResultado(nResultado)
    Else
        Qout("Operacao invalida ou impossivel de calcular!")
    EndIf

Return Nil

Function LerNumero(cMensagem)
    Local cValor := ""
    Local nValor := 0

    Accept cMensagem To cValor
    nValor := Val(cValor)

Return nValor

Function LerOperacao()
    Local cOperacao := ""

    Accept "Digite a operacao (+, -, *, /, ^, R): " To cOperacao

Return Upper(AllTrim(cOperacao))

Function Calcular(nValor1, nValor2, cOperacao, nResultado)

    Do Case
        Case cOperacao == "+"
            nResultado := nValor1 + nValor2

        Case cOperacao == "-"
            nResultado := nValor1 - nValor2

        Case cOperacao == "*"
            nResultado := nValor1 * nValor2

        Case cOperacao == "/"
            If nValor2 == 0
                Qout("Erro: divisao por zero.")
                Return .F.
            EndIf
            nResultado := nValor1 / nValor2

        Case cOperacao == "^"
            nResultado := nValor1 ^ nValor2

        Case cOperacao == "R"
            If nValor1 < 0
                Qout("Erro: nao existe raiz real de numero negativo.")
                Return .F.
            EndIf
            nResultado := Sqrt(nValor1)

        Otherwise
            Return .F.
    EndCase

Return .T.

Function MostrarResultado(nResultado)
    Qout("Resultado: " + AllTrim(Str(nResultado, 10, 2)))
Return Nil
