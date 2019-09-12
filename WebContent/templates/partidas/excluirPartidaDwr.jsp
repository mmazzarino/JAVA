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
	<script type='text/javascript' src='/projetoBase/dwr/interface/ExcluiPartidaJS.js'></script>
	<script type='text/javascript' src='../../javascript/partidas/dwr/exclui.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/interface/ListaPartidasJS.js'></script>
    <script type='text/javascript' src='../../javascript/partidas/dwr/gridPartidas.js'></script>
	<title>Exclui Partida</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">
	<form id="formulario" autocomplete="off" action="javascript:excluirPartida(); carregaGridPartidas();">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código da Partida que deseja excluir:</label><input type="text" id="codPartidaExc"/><br /><br />	
			<input type="submit" value="Excluir" />
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