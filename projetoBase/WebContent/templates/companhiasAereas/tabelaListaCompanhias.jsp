<%@ page import="components.companhiasAereas.Companhias"%>
<%@ page import="mvc.interfaceRules.Rules"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="components.companhiasAereas.ListaTodasCompanhiasRules"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	.grid {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	border-top: 1px solid black;
	border-right: 1px solid black;
	background-color: #B0C4DE;
	
}
	.grid > span {
	padding: 8px 4px;
	border-left : 1px solid black;
	border-bottom: 1px solid black;
	
}
</style>
<title>Lista de todas Companhias Aereas</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<table>

		<%
		ArrayList<Companhias> listaCompanhias = new ArrayList <Companhias>();
		listaCompanhias = (ArrayList <Companhias>) request.getAttribute("listaCompanhias");
		%>
		
		<div class="grid">
			<span><strong>Cod Companhia</strong></span>
			<span><strong>Nome Companhia</strong></span>
		</div>

			
		<%for(Companhias companhia : listaCompanhias) {%>
		
			<div class="grid">
  				<span><%out.print(companhia.getCodCompanhia());%></span>	
  				<span><%out.print(companhia.getNome());%></span>					
			</div>
		
		<%} %>
		
	</table>
</body>
</html>