<%-- 
    Document   : uploads
    Created on : Nov 23, 2020, 10:22:48 AM
    Author     : pmoreno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <link href="logestilos.css" rel="stylesheet" type="text/css"/>
        <title>Upload JSP Page</title>
    </head>
    <body>
    <center>
        <br>
        <section class="form-register">
            <a>Carga de archivos</a>
            <br><br>
            <br>
            
        <form method="post" action='UploadServlet' enctype="multipart/form-data" name="action">
            Seleccionar: <input type="file" name="file" size="60"/><br />
            <br /> <input class="botons" type="submit" value="Upload" />
        </form>
        </section>
        
    </center>
         

    </body>
</html>
