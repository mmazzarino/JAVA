<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Exclui Avi�o</title>
</head>
<body>

	<jsp:include page="../../index.jsp" />

	<div id="area">
		<form id="formulario" autocomplete="off"
			action="/projetoBase/aviao?Rules=ExcluirAviao" method="POST">
			<fieldset>
				<legend>Formul�rio</legend>
				<label id="esquerda">C�digo do Avi�o que deseja excluir:</label> <input type="text" name="codAviaoExc" /><br /> <br /> 
				
				<input type="submit" value="Excluir" />
				
				</fieldset>
		</form>
	</div>
</body>
</html>