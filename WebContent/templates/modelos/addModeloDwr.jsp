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
	<script type='text/javascript' src='/projetoBase/dwr/interface/AddModeloJS.js'></script>
	<script type='text/javascript' src='../../javascript/modelos/dwr/add.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/interface/ListaModelosJS.js'></script>
	<script type='text/javascript' src='../../javascript/modelos/dwr/gridModelos.js'></script>
	
	<title>Formulario Adcionar Modelo</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">	

	<form id="formulario" autocomplete="off" action="javascript:enviar(); carregaGridModelos(); ">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código do Modelo:</label><input type="text" id="codModelo"/>
			<label id="direita">Descrição do Modelo:</label><input type="text" id="descricaoModelo"/><br /><br />	
			<input type="submit" value="Gravar" />
		</fieldset>
	</form>
	</div>
	
	<div id ="gridListaModelos">
		<a href="javascript:carregaGridModelos()" >Carregar</a> 
		<a href="javascript:cleanAddRows('GridModelos')" >Limpar</a>
		
		<jsp:include page="dwr/gridModelos.jsp" />
	</div>
</body>
</html>

