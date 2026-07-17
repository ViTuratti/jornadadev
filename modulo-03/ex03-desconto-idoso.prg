Function Main()

    Local cNome
    Local cDataNasc
    Local cPreco
    Local dNasc
    Local nPreco
    Local nIdade
    Local nDesconto := 0
    Local nTotal

    SET DATE BRITISH

    ACCEPT "Digite seu nome: " TO cNome
    ACCEPT "Digite sua data de nascimento (DD/MM/YYYY): " TO cDataNasc
    ACCEPT "Digite o valor do item: " TO cPreco

    dNasc  := CToD(cDataNasc)
    nPreco := Val(cPreco)

    nTotal := nPreco

    nIdade := ((Date() - dNasc) / 365)

    IF nIdade > 60
        nDesconto := nPreco * 0.125
        nTotal := nPreco - nDesconto
    ENDIF

    QOut("")
    QOut("Cliente: " + cNome)
    QOut("Idade: " + AllTrim(Str(Int(nIdade))) + " anos")
    QOut("Preco: R$ " + AllTrim(Str(nPreco,10,2)))
    QOut("Desconto: R$ " + AllTrim(Str(nDesconto,10,2)))
    QOut("Total: R$ " + AllTrim(Str(nTotal,10,2)))

Return Nil
