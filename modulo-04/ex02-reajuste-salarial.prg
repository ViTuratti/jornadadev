Function Main()

    Local nSalario := 0
    Local nNovoSalario := 0

    ACCEPT "Digite o sal rio atual: " TO nSalario
    nSalario := Val(nSalario)

    IF nSalario < 1000
        nNovoSalario := nSalario * 1.15
    ELSEIF nSalario <= 2000
        nNovoSalario := nSalario * 1.12
    ELSEIF nSalario <= 4000
        nNovoSalario := nSalario * 1.08
    ELSE
        nNovoSalario := nSalario * 1.05
    ENDIF

    QOut("")
    QOut("Sal rio atual: R$ " + AllTrim(Str(nSalario, 10, 2)))
    QOut("Novo sal rio : R$ " + AllTrim(Str(nNovoSalario, 10, 2)))

Return Nil
