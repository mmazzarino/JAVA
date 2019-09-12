<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../../css/estiloForm.css">
	<link rel="stylesheet" type="text/css" href="../../css/estiloGrid.css">
	
	<script type='text/javascript' src='/projetoBase/dwr/engine.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/util.js'></script>
    <script type='text/javascript' src='/projetoBase/dwr/interface/AddPartidaJS.js'></script>
    <script type='text/javascript' src='../../javascript/partidas/dwr/add.js'></script>
    <script type='text/javascript' src='/projetoBase/dwr/interface/ListaPartidasJS.js'></script>
    <script type='text/javascript' src='../../javascript/partidas/dwr/gridPartidas.js'></script>
	<title>Formulario Adcionar Partida</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">
	<form id="formulario" autocomplete="off" action="javascript:enviar(); carregaGridPartidas();">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código da Partida:</label><input type="text" id="codPartida"/>
			<label id="direita">Data da Partida:</label><input type="datetime-local" id="dataPartida"/><br /><br />
			<label id="esquerda">Código do Aviao:</label><input type="text" id="codAviao"/><br />	<br />	
			<input type="submit" value="Gravar" />
		</fieldset>
	</form>
	</div>
	
	<div id ="gridListaPartidas">
		<a href="javascript:carregaGridPartidas()" >Carregar</a> 
		<a href="javascript:cleanAddRows('GridPartidas')" >Limpar</a>
		
		<jsp:include page="dwr/gridPartidas.jsp" />
	</div>
</body>
</html>

