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
	<script type='text/javascript' src='/projetoBase/dwr/interface/AlteraCompanhiaJS.js'></script>
	<script type='text/javascript' src='../../javascript/companhias/dwr/altera.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/interface/ListaCompanhiasJS.js'></script>
	<script type='text/javascript' src='../../javascript/companhias/dwr/gridCompanhias.js'></script>
	<title>Formulario Altera Companhia</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />"/>
	
	<div id="area">

	<form id="formulario" autocomplete="off" action="javascript:alterar(); carregaGridCompanhias();">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código Comp. alterar:</label><input type="text" id="codCompanhiaAlt"/>
			<label id="direita">Código da Companhia:</label><input type="text" id="codCompanhia"/><br /><br />
			<label id="esquerda">Nome da Companhia:</label><input type="text" id="nome"/><br />	<br />
			<input type="submit" value="Alterar" />
		</fieldset>
	</form>
	</div>
	
	<div id ="gridListaCompanhias">
		<a href="javascript:carregaGridCompanhias()" >Carregar</a> 
		<a href="javascript:cleanAddRows('GridCompanhias')" >Limpar</a>
		
		<jsp:include page="dwr/gridCompanhias.jsp" />
	</div>
</body>
</html>