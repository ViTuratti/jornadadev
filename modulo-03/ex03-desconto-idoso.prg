Function main()
    Local cNome
    Local dNasc
    Local nPreco
    Local nIdade
    Local nDesconto := 0
    Local nTotal

    ACCEPT "Digite seu nome: " TO cNome
    ACCEPT "Digite sua data de nascimento: " TO dNasc
    ACCEPT "Digite o valor do item: " TO nPreco

    nPreco := Val(nPreco)
    dNasc := CtoD(dNasc)
    nTotal := nPreco

    nIdade := ((date() - dNasc) / 365)

    if (nIdade > 60)
        nTotal := nPreco * 0.875
        nDesconto := nPreco - nTotal
    endif
    Qout(" ")
    Qout("Cliente: " + cNome)
    Qout("Idade: " + AllTrim(Str(Int(nIdade))) + " anos")
    Qout("Preco: " + AllTrim(Str(nPreco,10,2)))
    Qout("Desconto: " + AllTrim(Str(nDesconto,10,2)))
    Qout("Total: " + AllTrim(Str(nTotal,10,2)))

Return Nil
