<%-- 
    Document   : prereg
    Created on : 6/03/2021, 01:36:06 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pre-registro Titulo electronico</title>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <form method="post" action="preregalumno.jsp">
             <center>
             
                 
                             
                 <br><section class="form-register">
                        <h4>Pre-registro para generar título electronico</h4>
                       
                            <a>&#8470; Nivel Academico</a>
                            <input  class="controls" placeholder="Nivel Academico" type="text" name="nivelac" value="" />
                            <BR>  
                            <a>&#127891; Carrera</a>
                            <input  class="controls" placeholder="Carrera" type="text" name="car" value="" />
                            <BR>                    
                            <a>&#128118; Lugar de Nacimiento</a>
                            <input  class="controls" placeholder="Lugar Nacimiento" type="text" name="lnac" value="" />
                            <BR>  
                            <a>&#35; CURP</a>
                            <input  class="controls" placeholder="Curp" type="text" name="curp1" value="" />
                            <BR>
                            <a>&#64; Nombre(s)</a>
                            <input  class="controls" placeholder="Nombre(s)" type="text" name="nom" value="" />
                            <BR>
                            <a>&#64; Apellido paterno</a>
                            <input  class="controls" placeholder="Apellido Paterno" type="text" name="apellip" value="" />
                            <BR>
                            <a>&#64; Apellido materno</a>
                            <input  class="controls" placeholder="Apellido Materno" type="text" name="apellim" value="" />
                            <BR>
                            <a>&#9793; Genero</a>
                            <input  class="controls" placeholder="Genero"type="text" name="gen" value="" />
                            <BR>
                            <a>&#35; Fecha de nacimiento</a>
                            <input  class="controls" placeholder="Fecha Nacimiento" type="text" name="fnaci" value="" />
                            <BR>
                            <a>&#128231; Email</a>
                            <input  class="controls" placeholder="Email" type="text" name="ema" value="" />
                            <BR>
                            <a>¿Alumno regular?</a>
                            <input  type="checkbox" name="regu" value="true" />
                            <!-- <td><input type="checkbox" name="regu" value="1 or true" /></td>-->
                            <br>
                            <br>
                            <BR><a>&#128176; Transferir</a>
                            <BR>
                            
                            <div id="paypal-button"></div>
<script src="https://www.paypalobjects.com/api/checkout.js"></script>
<script>
  paypal.Button.render({
    // Configure environment
    env: 'sandbox',
    client: {
      sandbox: 'AaX077l7cEkbJUfg1AJzA-PPOYiIQuwGO06JrAKui2JjQQOyvyC856VurUo6vp5wJXdJIMPqZAPClbI3',
      production: 'demo_production_client_id'
    },
    // Customize button (optional)
    
    style: {
      size: 'small',
      color: 'gold',
      shape: 'pill',
    },

    // Enable Pay Now checkout flow (optional)
    commit: true,

    // Set up a payment
    payment: function(data, actions) {
      return actions.payment.create({
        transactions: [{
          amount: {
            total: '1200.00',
            currency: 'MXN'
          }
        }]
      });
    },
    // Execute the payment
    onAuthorize: function(data, actions) {
      return actions.payment.execute().then(function() {
        // Show a confirmation message to the buyer
        window.alert('Pago Exitoso!');
      });
    }
  }, '#paypal-button');

</script>
                            
                            <!-- <td><input type="checkbox" name="regu" value="1 or true" /></td>-->
                            <p>Regresar a menu principal<a href="success.jsp"> Click aqui </a></p>
                            <input class="botons" type="submit" value="Registrar" />
                            <input class="botons" type="reset" value="Reset" />
                     </section>
             </center>            
        </form>
        
    </body>
</html>