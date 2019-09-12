<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../../css/estiloForm.css">
	<title>Formulario Adcionar Partida</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">
	<form id="formulario" autocomplete="off" action="/projetoBase/partida?Rules=AddPartida" method="POST">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código da Partida:</label><input type="text" name="codPartida"/>
			<label id="esquerda">Data da Partida:</label><input type="datetime-local" name="dataPartida"/><br /><br />
			<label id="esquerda">Código do Aviao:</label><input type="text" name="codAviao"/><br />	<br />	
			<input type="submit" value="Gravar" />
		</fieldset>
	</form>
	</div>
</body>
</html>

