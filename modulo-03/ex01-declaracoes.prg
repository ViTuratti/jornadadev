Function Main()

   Local cNome       := "Victor Turatti"
   Local nSalario    := 2500
   Local lAtivo      := .T.
   Local dAdmissao   := CTOD("01/01/2026")
   Local cCodDepto   := "TI01"
   
   SET DATE BRITISH

   Qout("Nome: " + cNome)
   Qout("Salário: " + AllTrim(Str(nSalario, 10, 2)))
   Qout("Ativo: " + IIf(lAtivo, ".T.", ".F."))
   Qout("Data de Admissão: " + DTOC(dAdmissao))
   Qout("Código do Departamento: " + cCodDepto)

Return Nil
