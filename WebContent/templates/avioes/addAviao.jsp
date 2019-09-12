<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../../css/customizacoes.css">
	<link rel="stylesheet" type="text/css" href="../../css/estiloGrid.css">
	
	<script type='text/javascript' src='/projetoBase/dwr/engine.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/util.js'></script>
    <script type='text/javascript' src='/projetoBase/dwr/interface/ListaAvioesJS.js'></script>    
    <script type='text/javascript' src='../../javascript/avioes/dwr/gridAvioes.js'></script>

	<title>Add Avi�o</title>
</head>
<body>

	
	<jsp:include page="../../sideNav.jsp" />

	<div id="area">
		<form id="formulario" autocomplete="off" action="/projetoBase/aviao?Rules=AddAviao" method="POST">
			<fieldset>
				<legend>Formul�rio</legend>
				<label id="esquerda">C�digo Avi�o:</label> <input id="intputEsq" type="text" name="codAviao" />
				<label id="direita">Nome do Avi�o:</label> <input id="intputDir" type="text" name="nomeAviao" /><br /> <br /> 
				<label id="esquerda">Altitude M�xima:</label> <input id="intputEsq" type="text" name="altitudeMaxima" />
				<label id="direita">Dist�ncia M�xima:</label> <input id="intputDir" type="text" name="distanciaMaxima" /><br /> <br /> 
				<label id="esquerda">C�digo do modelo:</label> <input id="intputEsq" type="text" name="codigoModelo" />
				<label id="direita">C�digo da Companhia:</label> <input id="intputDir" type="text" name="codigoCompanhia" /><br /> <br /> 
				
				<input type="submit" value="Gravar" />			
			</fieldset>
		</form>
	</div>

	
</body>
</html>


