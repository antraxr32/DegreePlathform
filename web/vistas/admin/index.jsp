<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("usuario") != null)
    {
%>
<html>
    <head>
        <meta charset="utf-8">
        <title>Sistema Titulaciones| Inicio</title>
       <link href="logestilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <section class="form-register"> 
                   

        <h4>                    
            Bienvenido - ${usuario.nombreUsuario}
            <small>Usted es, ${usuario.cargo.nombreCargo} </small>
        </h4>
        
        <a href="${pageContext.request.contextPath}/identificar.jsp" class="botons">Salir</a>
        <br>
        <br>
        <center>
        <a>Registrar</a>  <br><br>
        
        <center><a href="vistas/admin/regadmin.jsp" class="botons">usuarios</a></center>
        <br>
        <br>
        <a>Mostrar Usuarios</a> <br> <br>
  
        <center><a href="vistas/admin/view2.jsp" class="botons">Registros</a></center>
        <br>
        <br>
       
        <a>Mostrar recientes</a>  <br>
        <br>
        <center><a href="vistas/admin/view1.jsp" class="botons">Pre-registros</a></center>
        <br>
        <br>
      
        
        <a>Mostrar Imagenes</a>   <br>
        <br>
        
        <center><a href="verImagen.jsp" class="botons">Cargadas</a></center>
       </center>
       
        </section>             
        </body>
</html>
<%        
    }
    else
    {
        response.sendRedirect("../identificar.jsp");
    }
%>
