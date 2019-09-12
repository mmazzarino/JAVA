function enviar(){

	var formulario = [
		document.getElementById("codChegada").value, 
		document.getElementById("dataChegada").value, 
		document.getElementById("codAviao").value
	];
	
	AddChegadaJS.executa(formulario);
	
	//espera para que de tempo de atualizar a tabela
	for(var i = 0; i <= 50000000; i++)
	{    				
	}
	
}