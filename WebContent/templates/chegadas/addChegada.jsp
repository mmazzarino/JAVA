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
		<form id="formulario" autocomplete="off" action="/projetoBase/chegada?Rules=AddChegada" method="POST">
			<fieldset>
				<legend>Formulário</legend>
				<label id="esquerda">Código da Chegada:</label><input type="text" name="codChegada"/>
				<label id="direita">Data da Chegada:</label><input type="datetime-local" name="dataChegada"/><br /><br />
				<label id="esquerda">Código do Avião:</label><input type="text" name="codAviao"/><br /><br />	
				<input type="submit" value="Gravar" />
			</fieldset>
		</form>
	</div>
</body>
</html>

