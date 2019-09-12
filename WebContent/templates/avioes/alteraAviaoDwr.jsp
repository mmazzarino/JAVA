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
	
<title>Formulario Altera Avi�o</title>
</head>
<body>
	
	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">
		<form id="formulario" autocomplete="off" action="javascript:alterar(); carregaGridAvioes();">
			<fieldset>
				<legend>Formul�rio</legend>
				<label id="esquerda">C�digo do Avi�o alterar:</label><input type="text" id="codAviaoAlt" /> 
				<label id="esquerda">C�digo Avi�o:</label><input type="text" id="codAviao" /><br /> <br /> 
				<label id="esquerda">Nome do Avi�o:</label><input type="text" id="nomeAviao" />
				<label id="direita">Altitude M�xima:</label><input type="text" id="altitudeMaxima" /><br /> <br /> 
				<label id="esquerda">Dist�ncia M�xima:</label><input type="text" id="distanciaMaxima" /> 
				<label id="direita">C�digo do modelo:</label><input type="text" id="codigoModelo" /><br /> <br /> 
				<label id="esquerda">C�digo da Companhia:</label><input type="text" id="codigoCompanhia" /> 
				
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