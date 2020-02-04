<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../../css/estiloForm.css">
	<title>Formulario Altera Companhia</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">

	<form id="formulario" autocomplete="off" action="/projetoBase/companhia?Rules=AlteraCompanhia" method="POST">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código Comp. alterar:</label><input type="text" name="codCompanhiaAlt"/>
			<label id="direita">Código da Companhia:</label><input type="text" name="codCompanhia"/><br /><br />
			<label id="esquerda">Nome da Companhia:</label><input type="text" name="nome"/><br />	<br />
			<input type="submit" value="Alterar" />
		</fieldset>
	</form>
	</div>
</body>
</html>