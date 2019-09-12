function enviar(){

	var formulario = [
		document.getElementById("codPartida").value, 
		document.getElementById("dataPartida").value,
		document.getElementById("codAviao").value
	];
	
	AddPartidaJS.executa(formulario);
	
	//espera para que de tempo de atualizar a tabela
	for(var i = 0; i <= 50000000; i++)
	{    				
	}
	
}