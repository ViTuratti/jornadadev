Function Main()

    Local nValor1 := 0
    Local nValor2 := 0

    ACCEPT "Digite o primeiro valor: " TO nValor1
    nValor1 := Val(nValor1)

    ACCEPT "Digite o segundo valor: " TO nValor2
    nValor2 := Val(nValor2)

    IF nValor1 == nValor2
        QOut("Os dois valores são iguais.")
    ELSEIF nValor1 > nValor2
        QOut("Maior: " + AllTrim(Str(nValor1)))
        QOut("Menor: " + AllTrim(Str(nValor2)))
    ELSE
        QOut("Maior: " + AllTrim(Str(nValor2)))
        QOut("Menor: " + AllTrim(Str(nValor1)))
    ENDIF
Return Nil
