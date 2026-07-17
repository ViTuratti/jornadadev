Function Main()

    Local cSalario
    Local nSalario := 0
    Local nNovoSalario := 0

    ACCEPT "Digite o salário atual: " TO cSalario
    nSalario := Val(cSalario)

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
    QOut("Salário atual: R$ " + AllTrim(Str(nSalario,10,2)))
    QOut("Novo salário : R$ " + AllTrim(Str(nNovoSalario,10,2)))

Return Nil
