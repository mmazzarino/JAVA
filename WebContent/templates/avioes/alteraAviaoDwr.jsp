<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../../css/estiloGrid.css">
	
	<script type='text/javascript' src='/projetoBase/dwr/engine.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/util.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/interface/AlteraAviaoJS.js'></script>
	<script type='text/javascript' src='../../javascript/avioes/dwr/altera.js'></script>   
	<script type='text/javascript' src='/projetoBase/dwr/interface/ListaAvioesJS.js'></script>          	
    <script type='text/javascript' src='../../javascript/avioes/dwr/gridAvioes.js'></script>
	
<title>Formulario Altera Avião</title>
</head>
<body>
	
	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">
		<form id="formulario" autocomplete="off" action="javascript:alterar(); carregaGridAvioes();">
			<fieldset>
				<legend>Formulário</legend>
				<label id="esquerda">Código do Avião alterar:</label><input type="text" id="codAviaoAlt" /> 
				<label id="esquerda">Código Avião:</label><input type="text" id="codAviao" /><br /> <br /> 
				<label id="esquerda">Nome do Avião:</label><input type="text" id="nomeAviao" />
				<label id="direita">Altitude Máxima:</label><input type="text" id="altitudeMaxima" /><br /> <br /> 
				<label id="esquerda">Distância Máxima:</label><input type="text" id="distanciaMaxima" /> 
				<label id="direita">Código do modelo:</label><input type="text" id="codigoModelo" /><br /> <br /> 
				<label id="esquerda">Código da Companhia:</label><input type="text" id="codigoCompanhia" /> 
				
				<input type="submit" value="Alterar" />
			
			</fieldset>
		</form>
	</div>
	
	<div id="gridListaAvioes">
		<a href="javascript:carregaGridAvioes()" >Carregar</a> 
		<a href="javascript:cleanAddRows('GridAvioes')" >Limpar</a>
		
		<jsp:include page="dwr/gridAvioes.jsp" />	
	</div>

</body>
</html>