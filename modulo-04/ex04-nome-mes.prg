Function Main()

    Local aMeses := {"Janeiro","Fevereiro","Março","Abril","Maio","Junho",;
                     "Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"}
    Local cMes
    Local nMes := 0

    ACCEPT "Digite o número do mês: " TO cMes
    nMes := Val(cMes)

    IF nMes >= 1 .AND. nMes <= 12
        QOut("Mês: " + aMeses[nMes])
    ELSE
        QOut("Mês inválido")
    ENDIF

Return Nil
