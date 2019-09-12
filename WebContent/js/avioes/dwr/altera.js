/**
 * 
 */
function alterar(){

	var formulario = [
		document.getElementById("codAviaoAlt").value,
		document.getElementById("codAviao").value, 
		document.getElementById("nomeAviao").value, 
		document.getElementById("altitudeMaxima").value, 
		document.getElementById("distanciaMaxima").value, 
		document.getElementById("codigoModelo").value, 
		document.getElementById("codigoCompanhia").value
	];
	
	AlteraAviaoJS.executa(formulario);
	
	//espera para que de tempo de atualizar a tabela
	for(var i = 0; i <= 50000000; i++)
	{    				
	}
	
}