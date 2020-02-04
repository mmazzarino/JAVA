function alterar(){

	var formulario = [
		document.getElementById("codCompanhiaAlt").value,
		document.getElementById("codCompanhia").value, 
		document.getElementById("nome").value
	];
	
	AlteraCompanhiaJS.executa(formulario);
	
	//espera para que de tempo de atualizar a tabela
	for(var i = 0; i <= 50000000; i++)
	{    				
	}
	
}