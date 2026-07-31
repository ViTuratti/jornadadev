#include "protheus.ch"

USER FUNCTION STTIP002()
	LOCAL cFiltro := ""
	PRIVATE cCadastro := "Pets"
	PRIVATE aRotina := {;
		{"Pesquisar", "AxPesqui", 0, 1},;
		{"Visualizar", "AxVisual", 0, 2},;
		{"Incluir", "AxInclui", 0, 3},;
		{"Alterar", "AxAltera", 0, 4},;
		{"Excluir", "AxDeleta", 0, 5};
		}
	dbSelectArea("ZA1")
	dbSetOrder(1)
	mBrowse(1, 1, 22, 75, "ZA1", , , , , , , , , , , , , , cFiltro)
RETURN NIL

/*
O mBrowse mantém a mesma estrutura de cadastro utilizada no AxCadastro, reaproveitando o aRotina e o dicionário de dados. 
A principal diferença é que oferece maior controle sobre a interface, permitindo filtros, legendas e personalizações. 
Enquanto o AxCadastro é ideal para protótipos e cadastros simples, o mBrowse é mais indicado para rotinas de produção por sua flexibilidade.

link da imagem: 

*/
