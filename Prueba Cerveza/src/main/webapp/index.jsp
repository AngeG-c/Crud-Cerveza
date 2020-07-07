
<%@page import="Dao.CapacidadBD"%>
<%@page import="Dao.Capacidad"%>
<%@page import="Dao.UsuarioBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Usuario> usuarios = new UsuarioBD().ListadoUsuario();
    List<Capacidad> catalogo= new CapacidadBD().ListadoCapacidad();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Beer management</title>
    </head>
    <body>
        <div>
            <div class="containe">
                <table align="center" class="table table-hover" >
                    <thead class="thead-dark">
                        <tr>
                            <td colspan="2"><h2>Beer</h2></td><br>
                            <td><a class="btn btn-success btn-black" href="formularioCerveza.jsp">Add Beer </a></td>
                        </tr>
                        <tr>
                            <th>Id Cerveza</th>
                            <th>Cerveza</th>
                            <th>Tipo</th>
                            <th>Envase</th>
                            <th>Capacidad</th>
                        </tr>
                        
                    </thead>
                    <%
                        for(Usuario usuario:usuarios){
                    %>
                    <tr>
                        <td><%=usuario.getId_cerveza()%></td>
                        <td><%=usuario.getCerveza()%></td>
                        <td><%=usuario.getTipo()%></td>
                        <td><%=usuario.getEnvase()%></td>
                        <td><%=usuario.getCapacidad()%></td>
                        <td><a class="btn btn-warning btn-block"  href="formularioCerveza.jsp?id_user=<%=usuario.getId_cerveza()%>">Edit Beer</a></td>
                        <td><a class="btn btn-danger btn-block" href="eliminarUsuario.jsp?id_user=<%=usuario.getId_cerveza()%>"> Delete Beer</a></td>
                        <td><a class="btn btn-danger btn-block" href="eliminarUsuario2.jsp?id_user=<%=usuario.getId_cerveza()%>"> Delete Beer v2</a></td>
                        <td><a class="btn btn-info btn-block" href="formularioContra.jsp?id_user=<%=usuario.getId_cerveza()%>">Edit Tipo</a></td>
                    </tr>
                    <%}%>
                </table>                    
            </div>                    
        </div>
                    <table align="center" class="table table-hover" >
                    <thead class="thead-dark">
                        <tr>
                            <td colspan="2"><h2>Beer</h2></td><br>
                        </tr>
                        <tr>
                            <th>Id Capacidad</th>
                            <th>Capacidad</th>
                        </tr>
                        
                    </thead>
                    <%
                        for(Capacidad capacidad:catalogo){
                    %>
                    <tr>
                        <td><%=capacidad.getId_cap()%></td>
                        <td><%=capacidad.getCapacidad()%></td>
                    </tr>
                    <%}%>
                    </table>
    </body>
</html>
