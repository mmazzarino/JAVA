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
	<script type='text/javascript' src='/projetoBase/dwr/interface/AlteraPartidaJS.js'></script>
	<script type='text/javascript' src='../../javascript/partidas/dwr/altera.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/interface/ListaPartidasJS.js'></script>
    <script type='text/javascript' src='../../javascript/partidas/dwr/gridPartidas.js'></script>
	<title>Formulario Altera Partida</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">
	<form id="formulario" autocomplete="off" action="javascript:alterar(); carregaGridPartidas();">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código Partida alterar:</label><input type="text" id="codPartidaAlt"/>
			<label id="direita">Código da Partida:</label><input type="text" id="codPartida"/><br /><br />
			<label id="esquerda">Data Partida:</label><input type="datetime-local" id="dataPartida"/>
			<label id="direita">Código do Avião:</label><input type="text" id="codAviao"/><br /><br />	
			<input type="submit" value="Alterar" />
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