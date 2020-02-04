function alterar(){

	var formulario = [
		document.getElementById("codModeloAlt").value,
		document.getElementById("codModelo").value, 
		document.getElementById("descricao").value
	];
	
	AlteraModeloJS.executa(formulario);
	
	//espera para que de tempo de atualizar a tabela
	for(var i = 0; i <= 50000000; i++)
	{    				
	}
}