
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Upload JSP Page</title>
    </head>
    <body>
         <h1>File Upload</h1>
        <form method="post" action='MultipleUploadServlet' enctype="multipart/form-data" name="action">
            Seleccionar archivo #1: <input type="file" name="file" size="60" /><br />
            Seleccionar archivo #2: <input type="file" name="file" size="60" /><br />
            Seleccionar archivo #3: <input type="file" name="file" size="60" /><br />
            <br /> <input type="submit" value="Upload" />
        </form>

    </body>
</html>
