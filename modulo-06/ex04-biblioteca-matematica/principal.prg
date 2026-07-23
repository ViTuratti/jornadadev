SET PROCEDURE TO matematica.prg

Function Main()

    TestarFatorial()
    TestarPrimo()
    TestarMDC()
    TestarMMC()

Return Nil

Function LerNumero(cMensagem)
    Local cValor := ""
    Local nValor := 0

    Accept cMensagem To cValor
    nValor := Val(cValor)

Return nValor

Function TestarFatorial()
    Local nN := 0

    Qout("")
    Qout("=== Fatorial ===")
    nN := LerNumero("Digite um numero para calcular o fatorial: ")
    Qout("Fatorial de " + Alltrim(Str(nN)) + ": " + Alltrim(Str(FatorialN(nN))))

Return Nil


Function TestarPrimo()
    Local nN := 0

    Qout("")
    Qout("=== Numeros primos ===")
    nN := LerNumero("Digite um numero para verificar se e primo: ")
    Qout(Alltrim(Str(nN)) + " e primo? " + IIf(EhPrimo(nN), "Sim", "Nao"))

Return Nil

Function TestarMDC()
    Local nA := 0
    Local nB := 0

    Qout("")
    Qout("=== Maximo Divisor Comum ===")
    nA := LerNumero("Digite o primeiro numero: ")
    nB := LerNumero("Digite o segundo numero: ")
    Qout("MDC(" + Alltrim(Str(nA)) + ", " + Alltrim(Str(nB)) + ") = " + Alltrim(Str(MDC(nA, nB))))

Return Nil

Function TestarMMC()
    Local nA := 0
    Local nB := 0

    Qout("")
    Qout("=== Minimo Multiplo Comum ===")
    nA := LerNumero("Digite o primeiro numero: ")
    nB := LerNumero("Digite o segundo numero: ")
    Qout("MMC(" + Alltrim(Str(nA)) + ", " + Alltrim(Str(nB)) + ") = " + Alltrim(Str(MMC(nA, nB))))

Return Nil
