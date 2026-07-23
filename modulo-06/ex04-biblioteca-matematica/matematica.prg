Function FatorialN(nN)
    Local nI         := 0
    Local nResultado := 1

    If nN <= 1
        Return 1
    EndIf

    For nI := 2 To nN
        nResultado *= nI
    Next nI

Return nResultado

Function EhPrimo(nN)
    Local nI := 0

    If nN < 2
        Return .F.
    EndIf

    For nI := 2 To nN - 1
        If Mod(nN, nI) == 0
            Return .F.
        EndIf
    Next nI

Return .T.

Function MDC(nA, nB)
    Local nResto := 0

    While nB <> 0
        nResto := Mod(nA, nB)
        nA     := nB
        nB     := nResto
    EndDo

Return nA

Function MMC(nA, nB)
Return (nA * nB) / MDC(nA, nB)
