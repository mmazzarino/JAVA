<%@ page import="components.partidas.Partidas"%>
<%@ page import="mvc.interfaceRules.Rules"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="components.partidas.ListaTodasPartidasRules"%>
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
	grid-template-columns: repeat(3, 1fr);
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
<title>Lista de todas Partidas</title>
</head>
<body>

	<jsp:include page="../../sideNav.jsp" />
	
	<table>

		<%
		ArrayList<Partidas> listaPartidas = new ArrayList <Partidas>();
		listaPartidas = (ArrayList <Partidas>) request.getAttribute("listaPartidas");
		%>
		
		<div class="grid">
			<span><strong>Cod Partida</strong></span>
			<span><strong>Data Partida</strong></span>
			<span><strong>Cod Avião</strong></span>
		</div>

			
		<%for(Partidas partida : listaPartidas) {%>
		
			<div class="grid">
  				<span><%out.print(partida.getCodPartida());%></span>		
  				<span><%out.print(partida.getDataPartida());%></span>	
  				<span><%out.print(partida.getCodAviao());%></span>				
			</div>
		
		<%} %>
		
	</table>
</body>
</html>