<%@ page import="components.modelos.Modelos"%>
<%@ page import="mvc.interfaceRules.Rules"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="components.modelos.ListaTodosModelosRules"%>
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
		ArrayList<Modelos> listaModelos = new ArrayList <Modelos>();
		listaModelos = (ArrayList <Modelos>) request.getAttribute("listaModelos");
		%>
		
		<div class="grid">
			<span><strong>Cod Modelo</strong></span>
			<span><strong>Descrição</strong></span>
		</div>

			
		<%for(Modelos modelo : listaModelos) {%>
		
			<div class="grid">
  				<span><%out.print(modelo.getCodModelo());%></span>			
  				<span><%out.print(modelo.getDescricao());%></span>		
			</div>
		
		<%} %>
		
	</table>
</body>
</html>