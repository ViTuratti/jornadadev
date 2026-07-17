Function Main()

    Local cValor1
    Local cValor2
    Local cOperacao
    Local nValor1 := 0
    Local nValor2 := 0

    ACCEPT "Digite o primeiro valor: " TO cValor1
    nValor1 := Val(cValor1)

    ACCEPT "Digite o segundo valor: " TO cValor2
    nValor2 := Val(cValor2)

    ACCEPT "Digite a operação (+, -, *, /, ^, R): " TO cOperacao
    cOperacao := Upper(AllTrim(cOperacao))

    DO CASE

    CASE cOperacao == "+"
        QOut("Resultado: " + AllTrim(Str(nValor1 + nValor2, 10, 2)))

    CASE cOperacao == "-"
        QOut("Resultado: " + AllTrim(Str(nValor1 - nValor2, 10, 2)))

    CASE cOperacao == "*"
        QOut("Resultado: " + AllTrim(Str(nValor1 * nValor2, 10, 2)))

    CASE cOperacao == "/"
        IF nValor2 == 0
            QOut("Erro: divisão por zero.")
        ELSE
            QOut("Resultado: " + AllTrim(Str(nValor1 / nValor2, 10, 2)))
        ENDIF

    CASE cOperacao == "^"
        QOut("Resultado: " + AllTrim(Str(nValor1 ^ nValor2, 10, 2)))

    CASE cOperacao == "R"
        IF nValor1 < 0
            QOut("Erro: não existe raiz real de número negativo.")
        ELSE
            QOut("Raiz quadrada: " + AllTrim(Str(Sqrt(nValor1), 10, 2)))
        ENDIF

    OTHERWISE
        QOut("Operação inválida.")

    ENDCASE

Return Nil
