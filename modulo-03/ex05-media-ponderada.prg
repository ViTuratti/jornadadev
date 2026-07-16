Function main()
    Local nNota1 := 0
    Local nNota2 := 0
    Local nNota3 := 0
    Local nNota4 := 0
    Local nMedia := 0

    ACCEPT "Digite a primeira nota: " TO nNota1
    nNota1 := Val(nNota1)
    ACCEPT "Digite a segunda nota: " TO nNota2
    nNota2 := Val(nNota2)
    ACCEPT "Digite a terceira nota: " TO nNota3
    nNota3 := Val(nNota3)
    ACCEPT "Digite a quarta nota: " TO nNota4
    nNota4 := Val(nNota4)

    nMedia := ((nNota1*1) + (nNota2*2) + (nNota3*3) + (nNota4*4)) / (1+2+3+4)

    Qout(" ")
    Qout("A m‚dia ponderada das notas ‚: " + AllTrim(Str(nMedia, 10, 2)))
    
Return Nil  
