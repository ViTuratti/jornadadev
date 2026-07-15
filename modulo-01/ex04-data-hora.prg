FUNCTION Main()
	Local cNome     := "Victor"
	Local cCidade   := "Sao Paulo"
	Local cCurso    := "Hardour/ADVPL"
	Local cSep      := "==================================="
	Local dDataHora
	Local cHora

	SET DATE FORMAT TO "DD/MM/YYYY"

	dDataHora  := DToC(Date())
	cHora      := Time()

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
