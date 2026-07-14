FUNCTION Main()
	Local cNome     := "Victor"
	Local cCidade   := "Sao Paulo"
	Local cCurso    := "Hardour/ADVPL"
	Local cSep      := "==================================="
    local dDataHora  := DToC(Date())
    local cHora      := Time()

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
