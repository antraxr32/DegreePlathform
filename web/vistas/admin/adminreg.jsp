<%-- 
    Document   : autreg
    Created on : 9/02/2021, 07:20:16 PM
    Author     : luis
--%>

<%@page import="java.sql.*"%>
<%
    String nomad = request.getParameter("nameadmin");
    String pues = request.getParameter("pue");
    String matri = request.getParameter("mat");
    String pass1 = request.getParameter("contra");
    String url = "jdbc:mysql://189.143.129.173/titulaciones?serverTimezone=UTC";
    //String url = "jdbc:mysql://192.168.1.73/bdsys?serverTimezone=UTC";
    //String url = "jdbc:mysql://192.168.1.64/bdsys?serverTimezone=UTC";
    String us = "user2";
    String pa = "datatest96";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(url,us,pa);
    Statement st = con.createStatement();
    
    int res = st.executeUpdate("insert into usuario (NOMBREUSUARIO, CLAVE, ESTADO, IDCARGO) values ('"+nomad+"', '"+pues+"', '"+matri+"', '"+pass1+"')");
    if (res >0)
    {
        response.sendRedirect("../admin/index.jsp");
    }
    else
    {
       //response.sendRedirect("index.jsp");
    }
%>