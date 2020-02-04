function excluirChegada(){
	var codigo = document.getElementById("codChegadaExc").value;
	
	ExcluiChegadaJS.executa(codigo);
	
	//espera para que de tempo de atualizar a tabela
	for(var i = 0; i <= 50000000; i++)
	{    				
	}
}