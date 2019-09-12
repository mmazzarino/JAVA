function enviar(){

	var formulario = [
		document.getElementById("codCompanhia").value, 
		document.getElementById("nomeCompanhia").value
	];
	
	AddCompanhiaJS.executa(formulario);
	
	//espera para que de tempo de atualizar a tabela
	for(var i = 0; i <= 50000000; i++)
	{    				
	}
	
}