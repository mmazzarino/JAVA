<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="http://localhost:8085/projetoBase/css/materialize.css">
    <link rel="stylesheet" href="css/customizacoes.css">
    <link rel="stylesheet" href="../../css/customizacoes.css">
</head>
<body>
	
	<jsp:include page="navBar.jsp"></jsp:include>  
	
	<jsp:include page="floatingActionButton.jsp"></jsp:include> 
	
	<jsp:include page="sideNav.jsp"></jsp:include> 
	
	<jsp:include page="footer.jsp"></jsp:include> 
	

	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script> 
		
	<script>
		document.addEventListener('DOMContentLoaded', function() {
	 		var elems = document.querySelectorAll('.sidenav');
	 		var instances = M.Sidenav.init(elems, {});
	    });
	</script>
		
	<script>
		document.addEventListener('DOMContentLoaded', function() {
	   		var elems = document.querySelectorAll('.collapsible');
	   		var instances = M.Collapsible.init(elems, {});
	    });	
	</script>
		
	<script>
		document.addEventListener('DOMContentLoaded', function() {
	   		var elems = document.querySelectorAll('.fixed-action-btn');
	   		var instances = M.FloatingActionButton.init(elems, {direction: 'left'});
		});
	</script>
	
	
</body>
</html>