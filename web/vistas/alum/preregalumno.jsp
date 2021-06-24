<%-- 
    Document   : preregalumno
    Created on : 6/03/2021, 01:48:30 PM
    Author     : luis
--%>

<%@page import="java.sql.*"%>
<%
    String nivaca = request.getParameter("nivelac");
    String carre = request.getParameter("car");
    String lugnac = request.getParameter("lnac");
    String curp2 = request.getParameter("curp1");
    String nomb = request.getParameter("nom");
    String apellidp = request.getParameter("apellip");
    String apellidm = request.getParameter("apellim");
    String gensex = request.getParameter("gen");
    String fechan = request.getParameter("fnaci");
    String ecorreo = request.getParameter("ema");
    //String isRegu = request.getParameter("regu");
    //Boolean isRegu = Boolean.parseBoolean(request.getParameter("regu"));
    Boolean bol= Boolean.parseBoolean(request.getParameter("regu"));
    int isRegu=bol?1:0;
    
    String url = "jdbc:mysql://189.143.129.173/titulaciones?serverTimezone=UTC";
    //String url = "jdbc:mysql://192.168.1.73/titulaciones?serverTimezone=UTC";
    //String url = "jdbc:mysql://192.168.1.64/titulaciones?serverTimezone=UTC";
    String us = "user2";
    String pa = "datatest96";
    Class.forName("org.mariadb.jdbc.Driver");
    Connection con = DriverManager.getConnection(url,us,pa);
    Statement st = con.createStatement();
    int res = st.executeUpdate("insert into registroalumnorev1(nivac, carr, lunac, curp, nom, apep, apem, gense, fechanac, email,regular) "
            + "values ('"+nivaca+"', '"+carre+"', '"+lugnac+"', '"+curp2+"','"+nomb+"', '"+apellidp+"', '"+apellidm+"', '"+gensex+"', '"+fechan+"', '"+ecorreo+"', '"+isRegu+"')") ;
    
    if (res >0)
    {
        response.sendRedirect("formAlumno.jsp");
    }
    else
    {
       response.sendRedirect("index.jsp");
    }
%>