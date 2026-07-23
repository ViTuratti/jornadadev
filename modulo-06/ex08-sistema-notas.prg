Function Main()
    Local aAlunos := {}

    aAlunos := LerAlunos()

    ExibirResultados(aAlunos)

Return Nil

Function LerAlunos()
    Local aAlunos  := {}
    Local cNome    := ""
    Local nN1, nN2, nN3, nN4, nMedia
    Local cContinua := ""
    Local nI       := 0

    While .T.
        nI++

        Qout("")
        Qout("--- Aluno " + Alltrim(Str(nI)) + " ---")

        Accept "Nome: " To cNome

        nN1 := LerNota("Nota 1 (0 a 10): ")
        nN2 := LerNota("Nota 2 (0 a 10): ")
        nN3 := LerNota("Nota 3 (0 a 10): ")
        nN4 := LerNota("Nota 4 (0 a 10): ")

        nMedia := CalcularMedia(nN1, nN2, nN3, nN4)

        AAdd(aAlunos, {cNome, nN1, nN2, nN3, nN4, nMedia})

        Qout("")
        Accept "Deseja cadastrar outro aluno? (S/N): " To cContinua

        If Upper(AllTrim(cContinua)) <> "S"
            Exit
        EndIf
    EndDo

Return aAlunos

Function LerNota(cMensagem)
    Local cValor := ""
    Local nValor := 0

    While .T.
        Accept cMensagem To cValor
        nValor := Val(cValor)

        If nValor >= 0 .AND. nValor <= 10
            Exit
        EndIf

        Qout("Nota invalida! Digite um valor entre 0 e 10.")
    EndDo

Return nValor

// --------------------------------------------
// Calcula a media aritmetica de 4 notas
// --------------------------------------------
Function CalcularMedia(nN1, nN2, nN3, nN4)
Return (nN1 + nN2 + nN3 + nN4) / 4

// --------------------------------------------
// Exibe a lista completa, aprovados e reprovados
// --------------------------------------------
Function ExibirResultados(aAlunos)
    Local nI := 0

    Qout("=== Aprovados ===")
    For nI := 1 To Len(aAlunos)
        If aAlunos[nI][6] >= 7
            Qout(aAlunos[nI][1] + " - Media: " + Alltrim(Str(aAlunos[nI][6], 10, 2)))
        EndIf
    Next nI

    Qout("")
    Qout("=== Reprovados ===")
    For nI := 1 To Len(aAlunos)
        If aAlunos[nI][6] < 7
            Qout(aAlunos[nI][1] + " - Media: " + Alltrim(Str(aAlunos[nI][6], 10, 2)))
        EndIf
    Next nI

Return Nil
