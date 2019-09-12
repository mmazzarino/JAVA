<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../../css/estiloForm.css">
	<title>Formulario Altera Partida</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">
	<form id="formulario" autocomplete="off" action="/projetoBase/partida?Rules=AlteraPartida" method="POST">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código Partida alterar:</label><input type="text" name="codPartidaAlt"/>
			<label id="direita">Código da Partida:</label><input type="text" name="codPartida"/><br /><br />
			<label id="esquerda">Data Partida:</label><input type="datetime-local" name="dataPartida"/>	
			<label id="direita">Código do Avião:</label><input type="text" name="codAviao"/><br /><br />	
			<input type="submit" value="Alterar" />
		</fieldset>
	</form>
	</div>
</body>
</html>