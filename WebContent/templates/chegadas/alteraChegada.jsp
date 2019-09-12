<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../../css/estiloForm.css">
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />

<div id="area">	
	<form id="formulario" autocomplete="off" action="/projetoBase/chegada?Rules=AlteraChegada" method="POST">
		<fieldset>
			<legend>Formul�rio</legend>
			<label id="esquerda">C�digo Chegada alterar:</label><input type="text" name="codChegadaAlt"/>
			<label id="direita">C�digo da Chegada:</label><input type="text" name="codChegada"/><br /><br />
			<label id="esquerda">Data da Chegada:</label><input type="datetime-local" name="dataChegada"/>
			<label id="direita">C�digo do Avi�o:</label><input type="text" name="codAviao"/><br /><br />
			<input type="submit" value="Alterar" />
		</fieldset>
	</form>
	</div>
</body>
</html>