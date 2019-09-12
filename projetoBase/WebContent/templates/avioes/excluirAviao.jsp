<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">

<title>Exclui Avião</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />

	<div id="area">
		<form id="formulario" autocomplete="off"
			action="/projetoBase/aviao?Rules=ExcluirAviao" method="POST">
			<fieldset>
				<legend>Formulário</legend>
				<label id="esquerda">Código do Avião que deseja excluir:</label> <input type="text" name="codAviaoExc" /><br /> <br /> 
				
				<input type="submit" value="Excluir" />
				
				</fieldset>
		</form>
	</div>
</body>
</html>