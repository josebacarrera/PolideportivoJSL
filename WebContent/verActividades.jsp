<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<%@ page import="java.util.*" %>
<%@ page import="modelo.bean.*" %>
<%@ page import="modelo.dao.*" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Actividades</title>
  </head>
  <body>
  <div class="container mt-3">
  	<div class="row">
  		<a class="btn btn-primary" href="CrearActividad">Crear actividad</a>
  	</div>
  	<div class="row">

   
    <div class="col-4 offset-8">
    	<form action="BuscarActividades" method="POST" class="form-inline">
			<input type="text" name="query" class="form-control" placeholder="buscar actividades">
			<button type="submit" class="btn btn-primary mx-2">Submit</button>
		</form>
	</div>

	

  	</div>
  	<div class="row">
	  	<div class="col">
		  	<h1>Actividades</h1>
		
			<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">nombre</th>
		      <th scope="col">fecha inicio</th>
		      <th scope="col">dias semana</th>
		      <th scope="col">acciones</th>
		    </tr>
		  </thead>
		  <tbody>
		  <%  ArrayList<Actividad> actividades = (ArrayList<Actividad>)request.getAttribute("actividades");
      	
      		for(Actividad actividad: actividades){
      	%>
		  
		  
		    <tr>
		      <th><a href="VerActividad?id=<%=actividad.getId()%>"><%=actividad.getNombre()%></a></th>
		      <td><%=actividad.getFecha_inicio()%></td>
		      <td><%=actividad.getDias()%></td>
		      <td>
		      	<a class="btn btn-primary" href="VerActividad?id=<%=actividad.getId()%>">Ver</a>
		      	<a class="btn btn-secondary" href="EditarActividad?id=<%=actividad.getId()%>">Editar</a>
		      	<a class="btn btn-danger" href="EliminarActividad?id=<%=actividad.getId()%>">Eliminar</a>
		      
		      </td>
		    </tr>
		   
		  <%		}//for                         	 %>
		   
		  </tbody>
		</table>
	  	</div>
  	</div>
  	
  </div>
    
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>