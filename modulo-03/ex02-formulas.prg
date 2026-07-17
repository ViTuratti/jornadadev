#Define PI 3.14159

Function Main()

    CalculaArea()
    CalculaHipotenusa()
    CalculaIMC()

Return Nil


Function CalculaArea()

    Local cRaio := ""
    Local nRaio := 0
    Local nArea := 0

    Qout("Resolucao da alternativa A)")
    Qout(" ")

    ACCEPT "Digite o raio do circulo: " TO cRaio
    nRaio := Val(cRaio)

    nArea := PI * (nRaio^2)

    Qout("A area e igual a " + AllTrim(Str(nArea,10,2)) + " cm2")
    Qout("-----------------------------------------------------------")

Return Nil


Function CalculaHipotenusa()

    Local cCatetoA := ""
    Local cCatetoB := ""
    Local nCatetoA := 0
    Local nCatetoB := 0
    Local nHipotenusa := 0

    Qout("Resolucao da alternativa B)")
    Qout(" ")

    ACCEPT "Digite o valor do cateto A: " TO cCatetoA
    nCatetoA := Val(cCatetoA)

    ACCEPT "Digite o valor do cateto B: " TO cCatetoB
    nCatetoB := Val(cCatetoB)

    nHipotenusa := Sqrt((nCatetoA^2)+(nCatetoB^2))

    Qout("A hipotenusa e igual a " + AllTrim(Str(nHipotenusa,10,2)))
    Qout("-----------------------------------------------------------")

Return Nil


Function CalculaIMC()

    Local cPeso := ""
    Local cAltura := ""
    Local nPeso := 0
    Local nAltura := 0
    Local nImc := 0

    Qout("Resolucao da alternativa C)")
    Qout(" ")

    ACCEPT "Digite o seu peso: " TO cPeso
    nPeso := Val(cPeso)

    ACCEPT "Digite a sua altura(metros): " TO cAltura
    nAltura := Val(cAltura)

    nImc := nPeso / (nAltura^2)

    Qout("O seu indice de massa corporal e " + AllTrim(Str(nImc,10,2)))
    Qout("-----------------------------------------------------------")

Return Nil
