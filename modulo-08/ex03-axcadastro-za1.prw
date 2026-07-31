#include "protheus.ch"

USER FUNCTION STTIP001()
	PRIVATE cCadastro := "Pets"
	dbSelectArea("ZA1")
	dbSetOrder(1)
	AxCadastro("ZA1", "Pets")
RETURN NIL

// Imagem do browser em https://github.com/ViTuratti/jornadadev/blob/main/modulo-08/imagens/Browser_ZA1.png 
