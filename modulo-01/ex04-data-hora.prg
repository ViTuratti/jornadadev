FUNCTION Main()
	Local cNome     := "Victor"
	Local cCidade   := "Sao Paulo"
	Local cCurso    := "Hardour/ADVPL"
	Local cSep      := "==================================="
	Local dDataHora
	Local cHora

	SET DATE BRITISH
	SET CENTURY ON

	dDataHora  := DToC(Date())
	cHora      := Time()

    QQout(cSep)
    Qout("       FICHA DE APRESENTACAO       ")
    Qout(cSep)
    Qout("Nome: " + cNome)
    Qout("Cidade: " + cCidade)
    Qout("Curso: " + cCurso)
    qout("Data: " + dDataHora)
    qout("Hora: " + cHora)
    Qout(cSep)
RETURN NIL
