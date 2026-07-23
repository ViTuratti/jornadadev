Function Main()
    Local nI     := 0
    Local tAgora
    Local cHora  := ""

    For nI := 1 To 30
        tAgora := ObterHora()
        cHora  := FormatarHora(tAgora)
        ExibirHora(cHora)
        Inkey(1)
    Next nI

    Qout("Relogio encerrado.")

Return Nil

Function ObterHora()
Return hb_DateTime()

Function FormatarHora(tHora)
Return hb_TToC(tHora, "", "hh:mm:ss")

Function ExibirHora(cHora)
    Qout("Hora atual: " + cHora)
Return Nil
