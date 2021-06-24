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
        <TITLE>Registro de alumnos</TITLE>
        <link href="estilosv2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <center>
            <table border="1" width="30%" cellpadding="3">
                <tr> 
                    <th colspan="5">Personal registrado en plataforma de titulaciones</th>
                </tr>
                <%
                Connection con;
                String url = "jdbc:mysql://189.143.129.173/bdsys";
                //String url = "jdbc:mysql://192.168.1.73/bdsys";
                //String url = "jdbc:mysql://192.168.1.64/bdsys";
                String Driver="com.mysql.jdbc.Driver";
                String user= "user2";
                String pass= "datatest96";
                Class.forName(Driver);
                con=DriverManager.getConnection(url, user, pass);
                PreparedStatement ps;
                ResultSet rs;
                ps=con.prepareStatement("select * from usuario");
                rs=ps.executeQuery();
                %>
                <div>
                    <tr>
                        <th>Número de folio</th>
                        <th>Matricula</th>
                        <th>Clave</th>
                        <th>Estado</th>
                        <th>Tipo de usuario</th>
                    </tr>
                    <%
                        while(rs.next()){
                    %>
                    <tr>
                        <td><%= rs.getInt("IDUSUARIO")%></td>
                        <td><%= rs.getString("NOMBREUSUARIO")%></td>
                        <td><%= rs.getString("CLAVE")%></td>
                        <td><%= rs.getString("ESTADO")%></td>
                        <td><%= rs.getString("IDCARGO")%></td>
                    </tr>
                    <%}%>
            </table>
            <%--<td colspan="2">Regresar a menu <a href="/vistas/admin/index.jsp"> principal </a></td> --%>
            <a href="${pageContext.request.contextPath}/identificar.jsp" class="botons">&#128275;Salir</a>
        </center>
    </body> 
</html> 