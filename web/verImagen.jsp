<%-- 
    Document   : verImagen
    Created on : Nov 23, 2020, 2:01:13 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="logestilos.css" rel="stylesheet" type="text/css"/>
        <link href="estilosv2.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <br>
        
        <section class="form-register">
            <h1>Ver imagen</h1><br/>
      <fieldset id="login">
        <legend>Ingresar</legend>
        
        <form method="get" action="UploadServlet">  
             <input type="hidden" name="action" value="buscarimg">
             <label for="imgname">ID imagen</label>
             <input type="text" name="imageid"/>
             <br>
             <input class="botons" type="submit" value="buscar" />               
        </form>
        <font color="red">
                    <% 
                     String msg = (String)session.getAttribute("message");
                     if( !(msg == null))
                     {
                        out.println(msg);                            
                        //session.setAttribute("mensaje", null);
                     }
                    %>                      
        </font>
      </fieldset> 

        </section>
        
        <br>
        <table border="1" width="30%" cellpadding="3">
                <tr> 
                    <th colspan="2">Listado de imagenes cargadas para revision</th>
                </tr>
                <%
                Connection con;
                String url = "jdbc:mysql://189.143.129.173/sistemaJSP";
                //String url = "jdbc:mysql://192.168.1.64/sistemaJSP";
                String Driver="com.mysql.jdbc.Driver";
                String user= "user2";
                String pass= "datatest96";
                Class.forName(Driver);
                con=DriverManager.getConnection(url, user, pass);
                PreparedStatement ps;
                ResultSet rs;
                ps=con.prepareStatement("select * from Roles");
                rs=ps.executeQuery();
                %>
                <div>
                    <tr>
                        <th>Identificacion de imagen</th>
                        <th>Ruta</th>
                    </tr>
                    <%
                        while(rs.next()){
                    %>
                    <tr>
                        <td><%= rs.getInt("ID_Rol")%></td>
                        <td><%= rs.getString("url")%></td>
                    </tr>
                    <%}%>
            </table>
        
    </center>
        
        
    </body>
</html>
