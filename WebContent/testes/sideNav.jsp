<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>	
   	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css"/>
   	<link type="text/css" rel="stylesheet" href="css/materialize.css"/>	
   	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.js"></script>
   	<script type="text/javascript" src="js/materialize.js"></script>
   	<script> document.addEventListener('DOMContentLoaded', function() {
   	    var elems = document.querySelectorAll('.sidenav');
   	    var instances = M.Sidenav.init(elems, options);
   	  });

   	  // Initialize collapsible (uncomment the lines below if you use the dropdown variation)
   	  // var collapsibleElem = document.querySelector('.collapsible');
   	  // var collapsibleInstance = M.Collapsible.init(collapsibleElem, options);

   	  // Or with jQuery

   	  $(document).ready(function(){
   	    $('.sidenav').sidenav();
   	  });
   	  </script>
</head>
<body>
	<nav> <!-- navbar content here  --> </nav>

  <ul id="slide-out" class="sidenav">
    <li><div class="user-view">
      <div class="background">
        <img src="img/office.jpg">
      </div>
      <a href="#user"><img class="circle" src="img/yuna.jpg"></a>
      <a href="#name"><span class="black-text name">John Doe</span></a>
      <a href="#email"><span class="black-text email">jdandturk@gmail.com</span></a>
    </div></li>
    <li><a href="#!"><i class="material-icons">cloud</i>First Link With Icon</a></li>
    <li><a href="#!">Second Link</a></li>
    <li><div class="divider"></div></li>
    <li><a class="subheader">Subheader</a></li>
    <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
  </ul>
  <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        
	 
</body>
</html>