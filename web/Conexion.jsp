<%-- 
    Document   : Conexion
    Created on : 26/05/2021, 09:26:03 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            Connection con= null;
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
               //con=(Connection)DriverManager.getConnection("jdbc:mysql://192.168.1.64:3306/titulaciones","user2","datatest96");
               con=(Connection)DriverManager.getConnection("jdbc:mysql://189.143.129.173:3306/titulaciones","user2","datatest96");
               out.print("Conexion exitosa");
            }
            catch(Exception ex)
            {
                out.print("Error: "+ex.getMessage());
            }
        %>
        
    </body>
</html>
