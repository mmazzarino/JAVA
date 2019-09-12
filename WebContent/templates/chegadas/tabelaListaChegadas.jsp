<%@ page import="components.chegadas.Chegadas"%>
<%@ page import="mvc.interfaceRules.Rules"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="components.chegadas.ListaTodasChegadasRules"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


	<meta charset="ISO-8859-1">

	<title>Lista de todas chegadas</title>
	
	<style>
		.grid {
		display: grid;
		grid-template-columns: repeat(3, 0.3fr);
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
</head>
<body>
	<div>
	<jsp:include page="../../sideNav.jsp" />
	</div>
	<div></div>
	
	<table>

		<%
		ArrayList<Chegadas> listaChegadas = new ArrayList <Chegadas>();
		listaChegadas = (ArrayList <Chegadas>) request.getAttribute("listaChegadas");
		%>
		
		<div class="grid">
			<span><strong>Cod Chegada</strong></span>
			<span><strong>Data Chegada</strong></span>
			<span><strong>Cod Avião</strong></span>
		</div>

			
		<%for(Chegadas chegada : listaChegadas) {%>
			
			<div class="grid">
  				<span><%out.print(chegada.getCodChegada());%></span>		
  				<span><%out.print(chegada.getDataChegada());%></span>	
  				<span><%out.println(chegada.getCodAviao());%></span>				
			</div>	
		<%} %>
		
	</table>
</body>
</html>