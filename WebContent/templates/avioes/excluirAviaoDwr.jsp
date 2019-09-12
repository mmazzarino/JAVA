<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../../css/estiloGrid.css">
	
	<script type='text/javascript' src='/projetoBase/dwr/engine.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/util.js'></script>
    <script type='text/javascript' src='/projetoBase/dwr/interface/ExcluiAviaoJS.js'></script>
    <script type='text/javascript' src='../../javascript/avioes/dwr/exclui.js'></script>
    <script type='text/javascript' src='/projetoBase/dwr/interface/ListaAvioesJS.js'></script>          	
    <script type='text/javascript' src='../../javascript/avioes/dwr/gridAvioes.js'></script>
	<title>Exclui Avião</title>
</head>
<body>
	
	<jsp:include page="../../sideNav.jsp" />

	<div id="area">
		<form id="formulario" autocomplete="off" action="javascript:excluirAviao(); carregaGridAvioes();">
			<fieldset>
				<legend>Formulário</legend>
				<label id="esquerda">Código do Avião que deseja excluir:</label> <input type="text" id="codAviaoExc" /><br /> <br /> 
				
				<input type="submit" value="Excluir" />
				
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