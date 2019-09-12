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
	<script type='text/javascript' src='/projetoBase/dwr/interface/AddChegadaJS.js'></script>
	<script type='text/javascript' src='../../javascript/chegadas/dwr/add.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/interface/ListaChegadasJS.js'></script>
	<script type='text/javascript' src='../../javascript/chegadas/dwr/gridChegadas.js'></script>
	<title>Adiciona Chegada</title>
</head>
<body>
	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">
		<form id="formulario" autocomplete="off" action="javascript:enviar(); carregaGridChegadas();">
			<fieldset>
				<legend>Formulário</legend>
				<label id="esquerda">Código da Chegada:</label><input type="text" id="codChegada"/>
				<label id="direita">Data da Chegada:</label><input type="datetime-local" id="dataChegada"/><br /><br />
				<label id="esquerda">Código do Avião:</label><input type="text" id="codAviao"/>	<br /><br />
				<input type="submit" value="Gravar" />
			</fieldset>
		</form>
	</div>
	
	<div id="gridListaChegadas">
		<a href="javascript:carregaGridChegadas()" >Carregar</a> 
		<a href="javascript:cleanAddRows('GridChegadas')" >Limpar</a>
		
		<jsp:include page="dwr/gridChegadas.jsp" />	
	</div>

</body>
</html>