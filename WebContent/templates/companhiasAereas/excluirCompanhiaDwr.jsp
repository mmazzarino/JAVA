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
    <script type='text/javascript' src='/projetoBase/dwr/interface/ExcluiCompanhiaJS.js'></script>
    <script type='text/javascript' src='../../javascript/companhias/dwr/exclui.js'></script>
    <script type='text/javascript' src='/projetoBase/dwr/interface/ListaCompanhiasJS.js'></script>
	<script type='text/javascript' src='../../javascript/companhias/dwr/gridCompanhias.js'></script>
	<title>Exclui Companhia</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">
	<form id="formulario" autocomplete="off" action="javascript:excluirCompanhia(); carregaGridCompanhias();">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código Companhia excluir:</label><input type="text" id="codCompanhiaExc"/><br /><br />	
			<input type="submit" value="Excluir" />
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