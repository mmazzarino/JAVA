<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>

	<jsp:include page="../../sideNav.jsp" />

	<div id="area">
		<form id="formulario" autocomplete="off"
			action="/projetoBase/aviao?Rules=AlteraAviao" method="POST">
			<fieldset>
				<legend>Formul�rio</legend>
				<label id="esquerda">C�digo do Avi�o alterar:</label><input type="text" name="codAviaoAlt" /> 
				<label id="esquerda">C�digo Avi�o:</label><input type="text" name="codAviao" /><br /> <br /> 
				<label id="esquerda">Nome do Avi�o:</label><input type="text" name="nomeAviao" />
				<label id="direita">Altitude M�xima:</label><input type="text" name="altitudeMaxima" /><br /> <br /> 
				<label id="esquerda">Dist�ncia M�xima:</label><input type="text" name="distanciaMaxima" /> 
				<label id="direita">C�digo do modelo:</label><input type="text" name="codModelo" /><br /> <br /> 
				<label id="esquerda">C�digo da Companhia:</label><input type="text" name="codCompanhia" /> 
				
				<input type="submit" value="Alterar" />
			
			</fieldset>
		</form>
	</div>
</body>
</html>