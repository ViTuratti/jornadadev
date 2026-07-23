SET PROCEDURE TO estoque_lib.prg

Function Main()
    Local aEstoque := {}
    Local cOpcao   := ""

    While .T.
        Menu()
        Accept "Opcao: " To cOpcao

        Do Case
            Case cOpcao == "1"
                CadastrarProduto(aEstoque)
            Case cOpcao == "2"
                ListarProdutos(aEstoque)
            Case cOpcao == "3"
                EntradaEstoque(aEstoque)
            Case cOpcao == "4"
                SaidaEstoque(aEstoque)
            Case cOpcao == "5"
                ExecutarBusca(aEstoque)
            Case cOpcao == "6"
                RelatorioEstoque(aEstoque)
            Case cOpcao == "0"
                Qout("Encerrando o sistema!")
                Exit
            Otherwise
                Qout("Opcao invalida! Escolha uma opcao do menu.")
        EndCase
    EndDo

Return Nil

Function Menu()
    Qout("")
    Qout("=== CONTROLE DE ESTOQUE ===")
    Qout("1 - Cadastrar produto")
    Qout("2 - Listar produtos")
    Qout("3 - Entrada de estoque")
    Qout("4 - Saida de estoque")
    Qout("5 - Buscar produto por codigo")
    Qout("6 - Relatorio de estoque")
    Qout("0 - Sair")
Return Nil

Function ExecutarBusca(aEstoque)
    Local cCodigo := ""
    Local nPos    := 0

    Qout("")
    Qout("--- Buscar produto ---")

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

    Qout("Encontrado na posicao " + Alltrim(Str(nPos)) + ":")
    Qout(aEstoque[nPos][1] + " - " + aEstoque[nPos][2] + ;
         " | Qtd: " + Alltrim(Str(aEstoque[nPos][3])) + ;
         " | Preco unit: R$ " + Alltrim(Str(aEstoque[nPos][4], 10, 2)))

Return Nil
