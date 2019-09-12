<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../../css/estiloForm.css">
	<title>Formulario Adcionar Modelo</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">	

	<form id="formulario" autocomplete="off" action="/projetoBase/modelo?Rules=AddModelo" method="POST">
		<fieldset>
			<legend>Formul�rio</legend>
			<label id="esquerda">C�digo do Modelo:</label><input type="text" name="codModelo"/>
			<label id="direita">Descri��o do Modelo:</label><input type="text" name="descricaoModelo"/><br /><br />	
			<input type="submit" value="Gravar" />
		</fieldset>
	</form>
	</div>
</body>
</html>

