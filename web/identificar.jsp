<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Titulaciones</title>
        <link href="logestilos.css" rel="stylesheet" type="text/css"/>
        </head>
    <body>
        
        <form action="srvUsuario?accion=verificar" method="POST">
            <center>
           <br>

                       <section class="form-register">     
                       <h4>Inicio de sesión</h4>
                              <BR>            

                        <a></a>
                        <input class="controls" type="text" name="txtUsu" id="txtUsu" value="" placeholder="&#128100; Introduce Usuario"/>
                       
                        <a></a>
                        <input class="controls" type="password" name="txtPass" id="txtPass" value="" placeholder="&#128273; Introduce Contraseña" />
                                                   
                        <input class="botons" type="submit" name="verificar" value="&#9094; Verificar" />
                        
                        <input class="botons" type="reset" value="&#8634; Reset" />
                        <BR>
                         <BR>
                           <a>Status ${msje}</a> 
                        
                       <!-- <tr>
                            <td colspan="2">No estas registrado <a href="reg.jsp"> Registrarse </a></td>
                        </tr> -->
                </section>
            </center>
                         <br><br><br>
                         <br>
                         <br>
                       <footer>
       
       <div class="container-footer-all">
        
            <div class="container-body">

                <div class="colum1">
                    <h1>Mas informacion de nosotros</h1>

                    <p>La Universidad Autónoma del Estado de Morelos (UAEM).  <br> 
                    Es un organismo público, descentralizado del Estado,
                    basada en los principios de libertad de cátedra y
                    de investigación,se haya inspirada en todas las
                    corrientes del pensamiento</p>

                </div>

                <div class="colum2">

                    <h1>Redes Sociales</h1>

                    <div class="row">
                        <a href="https://www.facebook.com/uaem.mx"><img src="icon/facebook.png"></a>
                        <label>Siguenos en Facebook</label>
                    </div>
                    <div class="row">
                         <a href="https://twitter.com/UAEMorelos"><img src="icon/twitter.png"></a>
                        <label>Siguenos en Twitter</label>    
                    </div>
                    <div class="row">
                        <a href="https://www.instagram.com/uaemmorelos/?hl=es-la"><img src="icon/instagram.png"></a>      
                        <label>Siguenos en Instagram</label>
                    </div>
                  </div>

               
                
                
                <div class="colum3">

                    <h1>Informacion Contactos</h1>

                    <div class="row2">
                        <img src="icon/house.png">
                        <label>Av. Universidad No. 1001,
                        Col Chamilpa, Cuernavaca, Morelos,
                        México. C.P. 62209</label>
                    </div>

                    <div class="row2">
                        <img src="icon/smartphone.png">
                        <label>(777) 329-79-00</label>
                    </div>

                    <div class="row2">
                        <img src="icon/contact.png">
                         <label>web@uaem.mx</label>
                    </div>

                </div>

            </div>
        
        </div>
        
        <div class="container-footer">
               <div class="footer">
                    <div class="copyright">
                        © 2021 Todos los Derechos Reservados | <a href="https://www.youtube.com/user/UAEMor">UAEM Morelos</a>
                    </div>

                    <div class="information">
                        <a href="https://www.uaem.mx/">Informacion Compañia</a> | <a href="https://www.uaem.mx/aviso-de-privacidad/">Privacion y Politica</a>
                    </div>
                </div>

            </div>
        
    </footer>    
                           
        </form>        
    </body>
</html>
