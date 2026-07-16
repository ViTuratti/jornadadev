#Define PI 3.14159

Function main()
    CalculaArea()
    CalculaHipotenusa()
    CalculaIMC()

Return Nil

    Function CalculaArea()
        Local nRaio := 0
        Local nArea := 0
        Qout("Resolucao da alternativa A) ")
        Qout(" ")
        ACCEPT "Digite o raio do circulo: " TO nRaio
        nRaio := Val(nRaio)
        nArea := PI*(nRaio^2)
        Qout("A  rea ‚ igual a " + alltrim(str(nArea, 10, 2)) + " cmý")    
        Qout("----------------------------------------------------------- ")
    Return Nil

    Function CalculaHipotenusa()
        Local nCatetoA := 0
        Local nCatetoB := 0
        Local nHipotenusa := 0

        Qout("Resolucao da alternativa B) ")
        Qout(" ")
        ACCEPT "Digite o valor do cateto A: " TO nCatetoA
        nCatetoA := Val(nCatetoA)
        ACCEPT "Digite o valor do cateto B: " TO nCatetoB
        nCatetoB := Val(nCatetoB)

        nHipotenusa := sqrt((nCatetoA^2)+(nCatetoB^2))
        Qout("A hipotenusa ‚ igual a " + alltrim(str(nHipotenusa, 10, 2)))    
        Qout("----------------------------------------------------------- ")

    Return Nil

    Function CalculaIMC()
        Local nPeso := 0
        Local nAltura := 0
        Local nImc := 0

        Qout("Resolucao da alternativa c) ")
        Qout(" ")
        ACCEPT "Digite o seu peso: " TO nPeso
        nPeso := Val(nPeso)
        ACCEPT "Digite a sua altura(metros): " TO nAltura
        nAltura := Val(nAltura)

        nImc := nPeso / (nAltura^2)
        Qout("O seu indice de massa corporal ‚ " + alltrim(str(nImc, 10, 2)))    
        Qout("----------------------------------------------------------- ")
    Return Nil
    
        
