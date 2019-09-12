function excluirPartida(){
	var codigo = document.getElementById("codPartidaExc").value;
	
	ExcluiPartidaJS.executa(codigo);
	
	//espera para que de tempo de atualizar a tabela
	for(var i = 0; i <= 50000000; i++)
	{    				
	}
}