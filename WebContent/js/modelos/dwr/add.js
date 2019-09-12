function enviar(){

	var formulario = [
		document.getElementById("codModelo").value, 
		document.getElementById("descricaoModelo").value
	];
	
	AddModeloJS.executa(formulario);
	
	//espera para que de tempo de atualizar a tabela
	for(var i = 0; i <= 50000000; i++)
	{    				
	}
	
}