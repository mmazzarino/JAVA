function alterar(){

	var formulario = [
		document.getElementById("codChegadaAlt").value,
		document.getElementById("codChegada").value, 
		document.getElementById("dataChegada").value, 
		document.getElementById("codAviao").value
	];
	
	AlteraChegadaJS.executa(formulario);
	
	//espera para que de tempo de atualizar a tabela
	for(var i = 0; i <= 50000000; i++)
	{    				
	}
	
}