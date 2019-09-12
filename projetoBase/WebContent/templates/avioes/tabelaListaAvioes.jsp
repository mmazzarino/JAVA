<%@ page import="components.avioes.Avioes"%>
<%@ page import="mvc.interfaceRules.Rules"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="components.avioes.ListaTodosAvioesRules"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="javax.swing.JTable"%>
<%@ page import="java.awt.GridLayout"%>
<%@ page import="javax.swing.JFrame"%>
<%@ page import="javax.swing.JPanel"%>
<%@ page import="javax.swing.JScrollPane"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de todos Aviões</title>

	<style>
		.grid {
		display: grid;
		grid-template-columns: repeat(6, 0.3fr);
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
	

	<jsp:include page="../../sideNav.jsp" />


		<%
		ArrayList<Avioes> listaAvioes = new ArrayList <Avioes>();
		listaAvioes = (ArrayList <Avioes>) request.getAttribute("listaAvioes");
		%>
		
		<div class="grid">
			<span><strong>Nome Avião</strong></span>
			<span><strong>Cod Avião</strong></span>
			<span><strong>Altitude Max</strong></span>
			<span><strong>Distancia Max</strong></span>
			<span><strong>Cod Companhia</strong></span>
			<span><strong>Cod Modelo</strong></span>
		</div>

		<%for(Avioes aviao : listaAvioes) {%>			
  			<div class="grid">
  				<span><%out.print(aviao.getNomeAviao());%></span>
				<span><%out.print(aviao.getCodAviao());%></span>
				<span><%out.print(aviao.getAltitudeMaxima());%></span>
  				<span><%out.print(aviao.getDistanciaMaxima());%></span>
 				<span><%out.print(aviao.getCodCompanhia());%></span>
  				<span><%out.print(aviao.getCodModelo());%></span>
			</div>
		<%} %>
		

</body>
</html>