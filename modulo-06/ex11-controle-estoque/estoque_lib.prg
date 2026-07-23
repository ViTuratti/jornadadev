Function CadastrarProduto(aEstoque)
    Local cCodigo     := ""
    Local cNome       := ""
    Local nQuantidade := 0
    Local nPrecoUnit  := 0
    Local nPos        := 0

    Qout("")
    Qout("--- Cadastro de produto ---")

    While .T.
        Accept "Codigo do produto: " To cCodigo
        cCodigo := AllTrim(cCodigo)

        If Len(cCodigo) == 0
            Qout("Codigo invalido! Nao pode ser vazio.")
            Loop
        EndIf

        nPos := BuscarProduto(aEstoque, cCodigo)

        If nPos > 0
            Qout("Ja existe um produto com esse codigo!")
            Loop
        EndIf

        Exit
    EndDo

    Accept "Nome do produto: " To cNome
    nQuantidade := LerNumeroValido("Quantidade inicial: ", 0)
    nPrecoUnit  := LerNumeroValido("Preco unitario: ", 0.01)

    AAdd(aEstoque, {cCodigo, cNome, nQuantidade, nPrecoUnit})

    Qout("Produto cadastrado com sucesso!")

Return Nil

Function ListarProdutos(aEstoque)
    Local nI := 0

    Qout("")
    Qout("--- Lista de produtos ---")

    If Len(aEstoque) == 0
        Qout("Nenhum produto cadastrado.")
        Return Nil
    EndIf

    For nI := 1 To Len(aEstoque)
        Qout(aEstoque[nI][1] + " - " + aEstoque[nI][2] + ;
             " | Qtd: " + Alltrim(Str(aEstoque[nI][3])) + ;
             " | Preco unit: R$ " + Alltrim(Str(aEstoque[nI][4], 10, 2)))
    Next nI

Return Nil

Function EntradaEstoque(aEstoque)
    Local cCodigo     := ""
    Local nPos        := 0
    Local nQuantidade := 0

    Qout("")
    Qout("--- Entrada de estoque ---")

    If Len(aEstoque) == 0
        Qout("Nenhum produto cadastrado ainda.")
        Return Nil
    EndIf

    Accept "Codigo do produto: " To cCodigo
    cCodigo := AllTrim(cCodigo)

    nPos := BuscarProduto(aEstoque, cCodigo)

    If nPos == 0
        Qout("Produto nao encontrado!")
        Return Nil
    EndIf

    nQuantidade := LerNumeroValido("Quantidade a adicionar: ", 1)

    aEstoque[nPos][3] += nQuantidade

    Qout("Estoque atualizado! Nova quantidade: " + Alltrim(Str(aEstoque[nPos][3])))

Return Nil

Function SaidaEstoque(aEstoque)
    Local cCodigo     := ""
    Local nPos        := 0
    Local nQuantidade := 0

    Qout("")
    Qout("--- Saida de estoque ---")

    If Len(aEstoque) == 0
        Qout("Nenhum produto cadastrado ainda.")
        Return Nil
    EndIf

    Accept "Codigo do produto: " To cCodigo
    cCodigo := AllTrim(cCodigo)

    nPos := BuscarProduto(aEstoque, cCodigo)

    If nPos == 0
        Qout("Produto nao encontrado!")
        Return Nil
    EndIf

    nQuantidade := LerNumeroValido("Quantidade a retirar: ", 1)

    If aEstoque[nPos][3] < nQuantidade
        Qout("Erro: estoque insuficiente! Quantidade atual: " + Alltrim(Str(aEstoque[nPos][3])))
        Return Nil
    EndIf

    aEstoque[nPos][3] -= nQuantidade

    Qout("Estoque atualizado! Nova quantidade: " + Alltrim(Str(aEstoque[nPos][3])))

Return Nil

Function BuscarProduto(aEstoque, cCodigo)
    Local nI := 0

    For nI := 1 To Len(aEstoque)
        If aEstoque[nI][1] == cCodigo
            Return nI
        EndIf
    Next nI

Return 0

Function RelatorioEstoque(aEstoque)
    Local nI         := 0
    Local nTotal     := 0
    Local nValorItem := 0

    Qout("")
    Qout("--- Relatorio de estoque ---")

    If Len(aEstoque) == 0
        Qout("Nenhum produto cadastrado.")
        Return Nil
    EndIf

    For nI := 1 To Len(aEstoque)
        nValorItem := aEstoque[nI][3] * aEstoque[nI][4]
        Qout(aEstoque[nI][1] + " - " + aEstoque[nI][2] + ;
             " | Valor em estoque: R$ " + Alltrim(Str(nValorItem, 10, 2)))
        nTotal += nValorItem
    Next nI

    Qout("--------------------------------")
    Qout("Valor total em estoque: R$ " + Alltrim(Str(nTotal, 10, 2)))

Return Nil

Function LerNumeroValido(cMensagem, nMinimo)
    Local cValor := ""
    Local nValor := 0

    While .T.
        Accept cMensagem To cValor
        nValor := Val(cValor)

        If nValor >= nMinimo
            Exit
        EndIf

        Qout("Valor invalido! Digite um numero valido.")
    EndDo

Return nValor
