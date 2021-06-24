<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("estudiante") != null)
    {
%>
<html>
    <head>
        <meta charset="utf-8">
        <title>Sistema de Titulaciones Alumno| Inicio</title>
       
        <link href="foralestilos.css" rel="stylesheet" type="text/css"/>
        <link href="logestilos.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
         <section class="form-register"> 
        <p>                    
            Bienvenido - ${estudiante.nombreUsuario}
            <small>Usted es, ${estudiante.cargo.nombreCargo} </small>
        </p>
        <a href="${pageContext.request.contextPath}/identificar.jsp" class="botons">Salir</a>
<br>
<br>
<br>
<BR>Generar  
<a href="vistarep.jsp" class="botons">Titulo</a>
<br>
<br>
<br>
<BR>Pre-registro de  
<a href="vistas/alum/prereg.jsp" class="botons">Alumnos</a>
<br>
<br>
<br>
<BR>Cargar archivos para iniciar proceso de 
<a href="uploads.jsp" class="botons">titulación</a>
    </body>
</html>
<%        
    }else {
        response.sendRedirect("identificar.jsp");
    }
%>
