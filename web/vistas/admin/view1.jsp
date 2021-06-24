<%-- 
    Document   : view1
    Created on : 9/02/2021, 04:43:27 PM
    Author     : luis
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>Pre-registros hechos/recientes</TITLE>
        <link href="estilosv1.css" rel="stylesheet" type="text/css"/>
        <link href="foot.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <center>
            <section class="form-register">   
            <table border="1" width="30%" cellpadding="3">
                <tr> 
                    <th colspan="12">Ver pre-registros recientes</th>
                </tr>
                <%
                Connection con;
                String url = "jdbc:mysql://189.143.129.173/titulaciones";
                //String url = "jdbc:mysql://192.168.1.73/titulaciones";
                //String url = "jdbc:mysql://192.168.1.64/titulaciones";
                String Driver="com.mysql.jdbc.Driver";
                String user= "user2";
                String pass= "datatest96";
                Class.forName(Driver);
                con=DriverManager.getConnection(url, user, pass);
                PreparedStatement ps;
                ResultSet rs;
                ps=con.prepareStatement("select * from registroalumnorev1");
                rs=ps.executeQuery();
                %>
                <div>
                    <tr>
                        <th>ID</th>
                        <th>Nivel Academico</th>
                        <th>Carrera</th>
                        <th>Lugar de Nacimiento</th>
                        <th>CURP</th>
                        <th>Nombre(S)</th>
                        <th>Apellido Paterno</th>
                        <th>Apellido Materno</th>
                        <th>Genero</th>
                        <th>Fecha de nacimiento</th>
                        <th>Correo electronico</th>
                        <th>¿Alumno regular?</th>
                    </tr>
                    <%
                        while(rs.next()){
                    %>
                    <tr>
                        <td><%= rs.getString("ID")%></td>
                        <td><%= rs.getString("nivac")%></td>
                        <td><%= rs.getString("carr")%></td>
                        <td><%= rs.getString("lunac")%></td>
                        <td><%= rs.getString("curp")%></td>
                        <td><%= rs.getString("nom")%></td>
                        <td><%= rs.getString("apep")%></td>
                        <td><%= rs.getString("apem")%></td>
                        <td><%= rs.getString("gense")%></td>
                        <td><%= rs.getString("fechanac")%></td>
                        <td><%= rs.getString("email")%></td>
                        <td><%= rs.getBoolean("regular")%></td>
                    </tr>
                    <%}%>
            </table>
            <td colspan="2">Regresar a menu <a href="index.jsp"> principal </a></td>
        </center>
    </body> 
</html> 