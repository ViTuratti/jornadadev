Function Main()
    Local aCarrinho := {}

    aCarrinho := AdicionarItens()

    ExibirCarrinho(aCarrinho)

Return Nil

Function AdicionarItens()
    Local aCarrinho  := {}
    Local cNome      := ""
    Local nPreco     := 0
    Local cContinua  := ""

    While .T.

        Accept "Nome do produto: " To cNome

        nPreco := LerPreco("Preco do produto: ")

        AAdd(aCarrinho, {cNome, nPreco})

        Qout("")
        Accept "Deseja adicionar outro item? (S/N): " To cContinua

        If Upper(AllTrim(cContinua)) <> "S"
            Exit
        EndIf
    EndDo

Return aCarrinho

Function LerPreco(cMensagem)
    Local cValor := ""
    Local nValor := 0

    While .T.
        Accept cMensagem To cValor
        nValor := Val(cValor)

        If nValor > 0
            Exit
        EndIf

        Qout("Preco invalido! Digite um valor maior que zero.")
    EndDo

Return nValor

Function ExibirCarrinho(aCarrinho)
    Local nI     := 0
    Local nTotal := 0

    Qout("")
    Qout("--------------------------------")
    Qout("=== Itens do carrinho ===")

    For nI := 1 To Len(aCarrinho)
        Qout(aCarrinho[nI][1] + " - R$ " + Alltrim(Str(aCarrinho[nI][2], 10, 2)))
        nTotal += aCarrinho[nI][2]
    Next nI

    Qout("--------------------------------")
    Qout("Total: R$ " + Alltrim(Str(nTotal, 10, 2)))

Return Nil
