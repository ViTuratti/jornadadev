Function Main()

   Local cNome       := "Victor Turatti"
   Local nSalario    := 2500
   Local lAtivo      := .T.
   Local dAdmissao   := date()
   Local cCodDepto   := "TI01"

   SET DATE BRITISH
   
   Qout("Nome: " + cNome)
   Qout("Salário: " + AllTrim(Str(nSalario, 10, 2)))
   Qout("Ativo: " + IIf(lAtivo, ".T.", ".F."))
   Qout("Data de Admissão: " + DtoC(dAdmissao))
   Qout("Código do Departamento: " + cCodDepto)

Return Nil
