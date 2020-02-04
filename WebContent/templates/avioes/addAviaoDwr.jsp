<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<title>Add Avião DWR</title>
</head>
	
<body>

    <jsp:include page="../../index.jsp" />
	
	 <div class="container"> 

		<form autocomplete="off" action="javascript:enviar(); carregaGridAvioes();">
			<div class="row">
				<div class="input-field col s8">
					<i class="material-icons prefix">account_circle</i>
					<input placeholder="Ex: blabla" id="nomeAviao" type="text" class="validate">
					<label for="nomeAviao">Nome do Avião</label>
				</div>
			</div>
			
			<div class="row">				
				<div class="input-field col s4">
					<i class="material-icons prefix">phone</i>
					<input placeholder="Ex: blabla" id="codAviao" type="text" class="validate">
					<label for="codAviao">Código Avião</label>
				</div>
	
				<div class="input-field col s4">
					<i class="material-icons prefix">alarm</i>
					<input placeholder="Ex: blabla" id="altitudeMaxima" type="text" class="validate">
					<label for="altitudeMaxima">Altitude Máxima</label>
				</div>
			</div>
			
			<div class="row">				
				<div class="input-field col s4">
					<i class="material-icons prefix">phone_android</i>
					<input placeholder="Ex: blabla" id="distanciaMaxima" type="text" class="validate">
					<label for="distanciaMaxima">Distância Máxima</label>
				</div>
				
				<div class="input-field col s4">
					<i class="material-icons prefix">add_shopping_cart</i>
					<input placeholder="Ex: blabla" id="codigoModelo" type="text" class="validate">
					<label for="codigoModelo">Código do modelo</label>
				</div>
			</div>
			
			<div class="row">				
				<div class="input-field col s4">
					<i class="material-icons prefix">mail_outline</i>
					<input placeholder="Ex: blabla" id="codigoCompanhia" type="text" class="validate">
					<label for="codigoCompanhia">Código da Companhia</label>
				</div>
			</div>
			
			<div class="row botao">
				<input class="waves-effect waves-light btn" type="submit" value="Gravar"/>	
			</div>	

		</form>
		
		<jsp:include page="dwr/gridAvioes.jsp" />	
		
	 </div> 
	

	<script type='text/javascript' src='/projetoBase/dwr/engine.js'></script>
	<script type='text/javascript' src='/projetoBase/dwr/util.js'></script> 
    <script type='text/javascript' src='/projetoBase/dwr/interface/AddAviaoJS.js'></script>  
    <script type='text/javascript' src='../../js/avioes/dwr/add.js'></script>   
    <script type='text/javascript' src='/projetoBase/dwr/interface/ListaAvioesJS.js'></script>             	
    <script type='text/javascript' src='../../js/avioes/dwr/gridAvioes.js'></script>
		
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			carregaGridAvioes();
	  	});	
	</script>

</body>
</html>