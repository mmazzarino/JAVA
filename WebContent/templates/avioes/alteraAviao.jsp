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
				<legend>Formulário</legend>
				<label id="esquerda">Código do Avião alterar:</label><input type="text" name="codAviaoAlt" /> 
				<label id="esquerda">Código Avião:</label><input type="text" name="codAviao" /><br /> <br /> 
				<label id="esquerda">Nome do Avião:</label><input type="text" name="nomeAviao" />
				<label id="direita">Altitude Máxima:</label><input type="text" name="altitudeMaxima" /><br /> <br /> 
				<label id="esquerda">Distância Máxima:</label><input type="text" name="distanciaMaxima" /> 
				<label id="direita">Código do modelo:</label><input type="text" name="codModelo" /><br /> <br /> 
				<label id="esquerda">Código da Companhia:</label><input type="text" name="codCompanhia" /> 
				
				<input type="submit" value="Alterar" />
			
			</fieldset>
		</form>
	</div>
</body>
</html>