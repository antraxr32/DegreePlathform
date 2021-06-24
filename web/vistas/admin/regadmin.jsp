<%-- 
    Document   : biblio
    Created on : 9/02/2021, 04:01:59 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de administrativos</title>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <form method="post" action="adminreg.jsp">
             <center>
                            <br>
                    <section class="form-register">
                       <h4> Registrar administrador</h4>
                       
                            <a>Matricula</a>
                            <input class="controls" type="text" placeholder="Introduce Matricula" name="nameadmin" value="" />
                        
                            <a>Clave de paso</a>
                            <input class="controls" type="text" placeholder="Introduce Clave" name="pue" value="" />
                       
                            <a>Estado</a>
                            <input class="controls"  type="text" placeholder="Introduce Estado" name="mat" value="" />
                      
                            <a>Tipo de usuario</a>                            
                            <input class="controls"  type="text" placeholder="Introduce Usuario" name="contra" value="" />
                            <p>Regresar a menu principal<a href="index.jsp"> Click aqui </a></p>                   
                            <input class="botons" type="submit" value="Registrar" />
                            <input class="botons" type="reset" value="Reset" />
                       
                            
                   
                     </section>
                
             </center>            
        </form>
        
    </body>
</html>