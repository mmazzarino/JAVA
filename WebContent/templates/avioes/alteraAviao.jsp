<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Altera Avião</title>
</head>
<body>

	<jsp:include page="../../index.jsp" />

	<div class="container">
		
		<form id="formulario" autocomplete="off" action="/projetoBase/aviao?Rules=AlteraAviao" method="POST">
		
			<div class="row">				
				<div class="input-field col s4">
					<i class="material-icons prefix">phone</i>
					<input placeholder="Ex: blabla" name="codAviaoAlt" type="text" class="validate">
					<label for="codAviao">Código Avião Antigo</label>
				</div>
								
				<div class="input-field col s4">
					<i class="material-icons prefix">phone</i>
					<input placeholder="Ex: blabla" name="codAviao" type="text" class="validate">
					<label for="codAviao">Código Avião Novo</label>
				</div>
			</div>
				
				
			<div class="row">
				<div class="input-field col s8">
					<i class="material-icons prefix">account_circle</i>
					<input placeholder="Ex: blabla" name="nomeAviao" type="text" class="validate">
					<label for="nomeAviao">Nome do Avião</label>
				</div>
			</div>
			
			<div class="row">	
				<div class="input-field col s4">
					<i class="material-icons prefix">alarm</i>
					<input placeholder="Ex: blabla" name="altitudeMaxima" type="text" class="validate">
					<label for="altitudeMaxima">Altitude Máxima</label>
				</div>
				
				<div class="input-field col s4">
					<i class="material-icons prefix">phone_android</i>
					<input placeholder="Ex: blabla" name="distanciaMaxima" type="text" class="validate">
					<label for="distanciaMaxima">Distância Máxima</label>
				</div>
			</div>
			
			<div class="row">
				<div class="input-field col s4">
					<i class="material-icons prefix">add_shopping_cart</i>
					<input placeholder="Ex: blabla" name="codigoModelo" type="text" class="validate">
					<label for="codigoModelo">Código do modelo</label>
				</div>

				<div class="input-field col s4">
					<i class="material-icons prefix">mail_outline</i>
					<input placeholder="Ex: blabla" name="codigoCompanhia" type="text" class="validate">
					<label for="codigoCompanhia">Código da Companhia</label>
				</div>
			</div>
			
			<div class="row botao">
				<input class="waves-effect waves-light btn" type="submit" value="Gravar"/>	
			</div>	
			
		</form>
	</div>
</body>
</html>