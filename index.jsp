<%@page import="com.emergentes.modelo.Producto"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>)session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primer Parcial</title>
    </head>
    <center>
        <div style="border:double green; width:500px;  background-color: #ffffff">
               <tr>
                    <th>PRIMER PARCIAL TEM-742</th>
                <br>
                    <th>NOMBRE: Teresa Pizarro Ramos </th>
                 <br>
                    <th>Carnet: 5478781</th>
                <br>
                 </tr>
            </div>
                
    <body>
        <h1>Productos</h1>
        <a href="MainController?op=nuevo">Nuevo Registro</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Descripcion</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Categoria</th>
                    <th>Editar</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
        <tbody>
            <%
                if (lista != null) {
                    for(Producto item : lista){
                    
            %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getDescripcion() %></td>
                    <td><%= item.getCantidad() %></td>
                    <td><%= item.getPrecio() %></td>
                    <td><%= item.getCategoria() %></td>
                    <td><a href="MainController?op=editar&id=<%= item.getId() %>">Modificar</a></td>
                    <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Esta seguro de eliminar el registro?')">Eliminar</a></td>
                </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
</center>
    </body>
</html>
