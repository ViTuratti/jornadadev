Function Main()
    Local cJogador     := ""
    Local cCPU         := ""
    Local nResultado   := 0
    Local cContinua    := ""

    While .T.
        While .T.
            Accept "Escolha (PEDRA, PAPEL, TESOURA): " To cJogador
            cJogador := Upper(AllTrim(cJogador))

            If ValidarJogada(cJogador)
                Exit
            EndIf

            Qout("Jogada invalida! Digite PEDRA, PAPEL ou TESOURA.")
        EndDo

        cCPU := SortearJogadaCPU()

        Qout("")
        Qout("Voce jogou   : " + cJogador)
        Qout("CPU jogou    : " + cCPU)

        nResultado := DefinirVencedor(cJogador, cCPU)

        Do Case
            Case nResultado == 0
                Qout("Resultado    : EMPATE!")
            Case nResultado == 1
                Qout("Resultado    : VOCE VENCEU!")
            Case nResultado == 2
                Qout("Resultado    : CPU VENCEU!")
        EndCase

        Qout("")
        Accept "Jogar novamente? (S/N): " To cContinua

        If Upper(AllTrim(cContinua)) <> "S"
            Exit
        EndIf

        Qout("")
    EndDo

Return Nil

Function SortearJogadaCPU()
    Local aOpcoes := {"PEDRA", "PAPEL", "TESOURA"}
    Local nSorteio := 0

    nSorteio := HB_RandomInt(1, 3)

Return aOpcoes[nSorteio]

Function ValidarJogada(cJogada)
Return cJogada == "PEDRA" .OR. cJogada == "PAPEL" .OR. cJogada == "TESOURA"


Function DefinirVencedor(cJogada1, cJogada2)

    If cJogada1 == cJogada2
        Return 0
    EndIf

    Do Case
        Case cJogada1 == "PEDRA"    .AND. cJogada2 == "TESOURA"
            Return 1
        Case cJogada1 == "PAPEL"    .AND. cJogada2 == "PEDRA"
            Return 1
        Case cJogada1 == "TESOURA"  .AND. cJogada2 == "PAPEL"
            Return 1
        Otherwise
            Return 2
    EndCase

Return 0
