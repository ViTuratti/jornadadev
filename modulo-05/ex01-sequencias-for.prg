Function main() 
    ExercicioA()
    ExercicioB()
    ExercicioC()
Return Nil

Function ExercicioA()
    LOCAL nI := 1
    Qout("--------------------------------")    
    Qout("Exercicio A")
    Qout("--------------------------------")    
    For nI := 1 To 100
        Qout("Numero: " + Str(nI))
    Next nI
Return Nil

Function ExercicioB()
    LOCAL nI := -50
    Qout("--------------------------------")
    Qout("Exercicio B")
    Qout("--------------------------------")
    For nI := -50 To 50
        Qout("Numero: " + Str(nI))
    Next nI
Return Nil

Function ExercicioC()
    Local nI := 80
    Qout("--------------------------------")
    Qout("Exercicio C")
    Qout("--------------------------------")
    For nI := 80 To 5 Step -1
        Qout("Numero: " + Str(nI))
    Next nI
Return Nil

