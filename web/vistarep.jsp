<%-- 
    Document   : vistarep
    Created on : 26/05/2021, 11:27:13 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generar titulo</title>
        <link href="vistarepestilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <center>
        <section class="form-register">  
        <h1>Generar titulo</h1>
        <br>
        <br>
        <form name="form1" action="pdf.jsp" target="_black">
            
            <input class="controls" type="text" name="txtpa" size="20" placeholder="Ingresa tu nombre"/>
            <input class="botons"type="submit" value="Generar PDF"/>
            <br>
            <br>
            <br>
            <a href="identificar.jsp" class="botons">Salir</a>
    </form>
    </center>
    </body>
</html>
