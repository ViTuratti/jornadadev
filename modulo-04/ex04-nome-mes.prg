Function Main()

    Local aMeses := {"Janeiro","Fevereiro","Mar‡o","Abril","Maio","Junho",;
                     "Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"}
    Local nMes := 0

    ACCEPT "Digite o n£mero do mˆs: " TO nMes
    nMes := Val(nMes)

    IF nMes >= 1 .AND. nMes <= 12
        QOut("Mˆs: " + aMeses[nMes])
    ELSE
        QOut("Mˆs inv lido")
    ENDIF

Return Nil
