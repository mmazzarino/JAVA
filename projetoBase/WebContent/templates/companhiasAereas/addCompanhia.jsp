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
	<form id="formulario" autocomplete="off" action="/projetoBase/companhia?Rules=AddCompanhia" method="POST">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código da Companhia:</label><input type="text" name="codCompanhia"/>
			<label id="direita">Nomde da Companhia:</label><input type="text" name="nomeCompanhia"/><br /><br />
			<input type="submit" value="Gravar" />
		</fieldset>
	</form>
	</div>
</body>
</html>

