Function Main()

    Local cValor1
    Local cValor2
    Local nValor1 := 0
    Local nValor2 := 0

    ACCEPT "Digite o primeiro valor: " TO cValor1
    nValor1 := Val(cValor1)

    ACCEPT "Digite o segundo valor: " TO cValor2
    nValor2 := Val(cValor2)

    IF nValor1 == nValor2
        QOut("Os dois valores são iguais.")
    ELSEIF nValor1 > nValor2
        QOut("Maior: " + AllTrim(Str(nValor1,10,2)))
        QOut("Menor: " + AllTrim(Str(nValor2,10,2)))
    ELSE
        QOut("Maior: " + AllTrim(Str(nValor2,10,2)))
        QOut("Menor: " + AllTrim(Str(nValor1,10,2)))
    ENDIF

Return Nil
