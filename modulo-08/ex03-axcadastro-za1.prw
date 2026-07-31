#include "protheus.ch"
USER FUNCTION STTIP001()
	PRIVATE cCadastro := "Pets"
	dbSelectArea("ZA1")
	dbSetOrder(1)
	AxCadastro("ZA1", "Pets")
RETURN NIL

![SBrowser_ZA1](imagens/Browser_ZA1.png)
 
