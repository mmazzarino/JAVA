<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../../css/estiloForm.css">
	<title>Exclui Modelo</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<div id="area">
	<form id="formulario" autocomplete="off" action="/projetoBase/modelo?Rules=ExcluirModelo" method="POST">
		<fieldset>
			<legend>Formulário</legend>
			<label id="esquerda">Código do Modelo que deseja excluir:</label><input type="text" name="codModeloExc"/><br /><br />
			<input type="submit" value="Excluir" />
		</fieldset>
	</form>
	</div>
</body>
</html>