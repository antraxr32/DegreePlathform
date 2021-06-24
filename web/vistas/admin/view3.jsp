<%-- 
    Document   : view2
    Created on : 9/02/2021, 07:30:02 PM
    Author     : luis
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>Registro de administrativos</TITLE> 
    </head>
    <body>
        
        <center>
            <table border="1" width="30%" cellpadding="3">
                <tr> 
                    <th colspan="5">Administrativos registrados para generar titulo electronico</th>
                </tr>
                <%
                Connection con;
                String url = "jdbc:mysql://189.143.111.55/titulaciones";
                //String url = "jdbc:mysql://192.168.1.73/titulaciones";
                //String url = "jdbc:mysql://192.168.1.64/titulaciones";
                String Driver="com.mysql.jdbc.Driver";
                String user= "user2";
                String pass= "datatest96";
                Class.forName(Driver);
                con=DriverManager.getConnection(url, user, pass);
                PreparedStatement ps;
                ResultSet rs;
                ps=con.prepareStatement("select * from administrativos");
                rs=ps.executeQuery();
                %>
                <div>
                    <tr>
                        <th>Número de folio</th>
                        <th>Nombre</th>
                        <th>Puesto</th>
                        <th>Matrícula</th>
                        <th>Contraseña</th>
                    </tr>
                    <%
                        while(rs.next()){
                    %>
                    <tr>
                        <td><%= rs.getInt("ID")%></td>
                        <td><%= rs.getString("nombre")%></td>
                        <td><%= rs.getString("puesto")%></td>
                        <td><%= rs.getString("matricula")%></td>
                        <td><%= rs.getString("password")%></td>
                    </tr>
                    <%}%>
            </table>
            <td colspan="2">Regresar a menu <a href="successadmin.jsp"> principal </a></td>
        </center>
    </body> 
</html> 