Function Main()

    Local nValor1 := 0
    Local nValor2 := 0
    Local cOperacao := ""

    ACCEPT "Digite o primeiro valor: " TO nValor1
    nValor1 := Val(nValor1)

    ACCEPT "Digite o segundo valor: " TO nValor2
    nValor2 := Val(nValor2)

    ACCEPT "Digite a operaá∆o (+, -, *, /, ^, R): " TO cOperacao
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
            QOut("Erro: divis∆o por zero.")
        ELSE
            QOut("Resultado: " + AllTrim(Str(nValor1 / nValor2, 10, 2)))
        ENDIF

    CASE cOperacao == "^"
        QOut("Resultado: " + AllTrim(Str(nValor1 ^ nValor2, 10, 2)))

    CASE cOperacao == "R"
        QOut("Raiz quadrada: " + AllTrim(Str(Sqrt(nValor1), 10, 2)))

    OTHERWISE
        QOut("Operaá∆o inv†lida.")

    ENDCASE

Return Nil
