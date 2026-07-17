Function Main()

    Local nIdade := 0
    Local nDependentes := 0
    Local nValorPlano := 0
    Local nTotal := 0

    ACCEPT "Digite a idade do paciente: " TO nIdade
    nIdade := Val(nIdade)

    ACCEPT "Digite o n£mero de dependentes: " TO nDependentes
    nDependentes := Val(nDependentes)

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

    QOut("Mensalidade do plano de sa£de: R$ " + AllTrim(Str(nTotal,10,2)))

Return Nil
