
<%@page import="java.util.List"%>
<%@page import="Dao.UsuarioBD"%>
<%@page import="Dao.*"%>
<%@page import="config.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<%
    String titulo = "Add beer",user="";
    String ruta="agregarCerveza.jsp";
    int id = 0;
    if (request.getParameter("id_cerveza") != null) {
        id = Integer.parseInt(request.getParameter("id_cerveza"));
        
        UsuarioBD usuario = new UsuarioBD(); 
        user = usuario.BuscarUsuario(new Usuario(Integer.parseInt(request.getParameter("id_cerveza"))));  
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Beer</title>
    </head>
    <body>
        <div class="container">
            <h1>Beer</h1><br>
            <form action="<%=ruta%>" method="GET" class="form">
                <% if(id != 0){ %>
                <div>
                    <input type="hidden" value="<%=id%>" class="form-control" placeholder="Id" name="id" />
                </div>
                <% } %>
                <div class="form-group">
                    <input type="text" value="<%=user%>" class="form-control" placeholder="Cerveza" name="cerveza" required/>
                </div>
                <% if(id == 0){ %>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Tipo"  name="tipo" required />
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Envase"  name="envase" required />
                </div>
                <div class="form-group">
                    <select name="capacidad" class="form-control">
                        <option>
                            Selecciona la opcion...
                        </option>
                        <%
                            List<Capacidad> catalogo= new CapacidadBD().ListadoCapacidad();
                        for (Capacidad capacidad:catalogo){
                        %>
                        <option value="<%=capacidad.getId_cap()%>">
                            <%=capacidad.getCapacidad()%>
                        </option>
                        <%}
                        
                        %>
                    </select>
                </div>
                <% } %>
                <br>
                <div class="form-group">
                    <input type="submit" class="btn btn-success btn-black"  value="Send"/>
                    <a class="btn btn-info btn-black" href="index.jsp">Back</a>
                </div>
            </form>
            
        </div>
    </body>
</html>
