<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../../css/estiloForm.css">
	<title>Formulario Altera Modelo</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">

	<form id="formulario" autocomplete="off" action="/projetoBase/modelo?Rules=AlteraModelo" method="POST">
		<fieldset>
			<legend>Formul�rio</legend>
			<label id="esquerda">C�digo Modelo alterar:</label><input type="text" name="codModeloAlt"/>
			<label id="direita">C�digo do Modelo:</label><input type="text" name="codModelo"/><br /><br />
			<label id="esquerda">Descri��o do Modelo:</label><input type="text" name="descricao"/><br /><br />	
			<input type="submit" value="Alterar" />
		</fieldset>
	</form>
	</div>
</body>
</html>