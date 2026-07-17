Function Main()

    Local cIdade
    Local cDependentes
    Local nIdade := 0
    Local nDependentes := 0
    Local nValorPlano := 0
    Local nTotal := 0

    ACCEPT "Digite a idade do paciente: " TO cIdade
    nIdade := Val(cIdade)

    ACCEPT "Digite o número de dependentes: " TO cDependentes
    nDependentes := Val(cDependentes)

    IF nIdade < 0 .OR. nDependentes < 0
        QOut("Dados inválidos.")
        Return Nil
    ENDIF

    IF nIdade <= 25
        nValorPlano := 180
    ELSEIF nIdade <= 40
        nValorPlano := 260
    ELSEIF nIdade <= 60
        nValorPlano := 380
    ELSE
        nValorPlano := 520
    ENDIF

    nTotal := nValorPlano + (nDependentes * 90)

    QOut("Mensalidade do plano de saúde: R$ " + AllTrim(Str(nTotal,10,2)))

Return Nil
