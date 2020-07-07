
<%@page import="Dao.Usuario"%>
<%@page import="config.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean resultado;
    UsuarioBD usuario = new UsuarioBD();
    resultado = usuario.InsertarUsuario(new Usuario(request.getParameter("cerveza"), request.getParameter("tipo"), request.getParameter("envase"), request.getParameter("capacidad")));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Add user</title>
    </head>
    <body>
        <%
            if(resultado){
        %>
        <div class="alert alert-success" colspan="2">
            <h2>The beer was successfully added</h2>
        </div>
        <%
            }else{
        %>
            <div class="alert alert-danger" colspan="2">
               <h2>There was a mistake</h2>
            </div>
        <%
            }
        %>  
        <div>
           <a class="btn btn-success btn-black" href="index.jsp">Back</a>
        </div>                
    </body>
</html>