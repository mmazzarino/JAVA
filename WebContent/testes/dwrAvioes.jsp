<%@ page import="components.avioes.Avioes"%>
<%@ page import="mvc.interfaceRules.Rules"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="components.avioes.DwrListaAvioes"%>
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
<meta charset="ISO-8859-1">
<script type='text/javascript' src='/projetoBase/dwr/engine.js'></script>
<script type='text/javascript' src='/projetoBase/dwr/interface/ListaAvioesJS.js'></script>
<script type='text/javascript' src='/projetoBase/dwr/util.js'></script>

<title>Insert title here</title>
</head>
<body>


 <input class='ibutton' type='button' onclick='ListaAvioesJS.executa();' value='Execute'  title='Calls ListaAvioes.executa(). View source for details.'/>
</body>
</html>