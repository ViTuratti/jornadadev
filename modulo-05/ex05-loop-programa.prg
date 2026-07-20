Function Main()
    Local cNome     := ""
    Local cDisc     := ""
    Local cNota     := ""
    Local nNota1    := 0
    Local nNota2    := 0
    Local nMedia    := 0
    Local cContinua := ""

    While .T.

        While .T.
            Accept "Nome: " To cNome

            If Len(Trim(cNome)) > 0
                Exit
            EndIf

            Qout("Nome invalido! O nome nao pode ser vazio.")
        EndDo

        While .T.
            Accept "Disciplina (3 letras maiusculas, ex: MAT): " To cDisc

            If Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
                Exit
            EndIf

            Qout("Disciplina invalida! Digite exatamente 3 letras maiusculas.")
        EndDo

        While .T.
            Accept "Nota 1 (0 a 10): " To cNota

            If !IsDigit(cNota) .AND. Val(cNota) == 0 .AND. AllTrim(cNota) <> "0"
                Qout("Nota invalida! Digite apenas numeros.")
                Loop
            EndIf

            nNota1 := Val(cNota)

            If nNota1 >= 0 .AND. nNota1 <= 10
                Exit
            EndIf

            Qout("Nota invalida! Digite um valor entre 0 e 10.")
        EndDo

        While .T.
            Accept "Nota 2 (0 a 10): " To cNota

            If !IsDigit(cNota) .AND. Val(cNota) == 0 .AND. AllTrim(cNota) <> "0"
                Qout("Nota invalida! Digite apenas numeros.")
                Loop
            EndIf

            nNota2 := Val(cNota)

            If nNota2 >= 0 .AND. nNota2 <= 10
                Exit
            EndIf

            Qout("Nota invalida! Digite um valor entre 0 e 10.")
        EndDo

        nMedia := (nNota1 + nNota2) / 2

        Qout("--------------------------------")
        Qout("=== Dados do Aluno ===")
        Qout("Nome       : " + cNome)
        Qout("Disciplina : " + cDisc)
        Qout("Nota 1     : " + Alltrim(Str(nNota1, 5, 1)))
        Qout("Nota 2     : " + Alltrim(Str(nNota2, 5, 1)))
        Qout("Media      : " + Alltrim(Str(nMedia, 5, 1)))

        Qout("")
        Accept "Deseja calcular outro? (S/N): " To cContinua

        If Upper(cContinua) <> "S"
            Exit
        EndIf

    EndDo

    Qout("Encerrado o programa.")

Return Nil
