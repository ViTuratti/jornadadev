FUNCTION Main()
	Local cNome     := "Victor"
	Local cCidade   := "Sao Paulo"
	Local cCurso    := "Harbour/ADVPL"
	Local cSep      := "==================================="
	Local dDataHora  := hb_DToC(Date(), "DD/MM/YYYY")
	Local cHora      := Time()

    QQout(cSep)
    Qout("       FICHA DE APRESENTACAO       ")
    Qout(cSep)
    Qout("Nome: " + cNome)
    Qout("Cidade: " + cCidade)
    Qout("Curso: " + cCurso)
    Qout("Data: " + dDataHora)
    Qout("Hora: " + cHora)
    Qout(cSep)
RETURN NIL
