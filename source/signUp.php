<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="../css/style.css">

<!-- Custom js -->
<script type="text/javascript" src="../js/phone_validation.js"></script>  <!-- Change new -->

	<title>Sign Up</title>
</head>
<body>

<?php include "header.php" ?>
  <?php include "sidebar.php" ?>

<!-- Sign Up form start -->
<h1 align="center">Formulario de registro</h1>

<form method="post" action="../login-system/register.php" class="sign_up_form" onsubmit="return phonenumber(this)">

  <div class="sign_up_container">

    <input style="margin-left: 5%" type="radio" name="account_type" value="Personal" required>  Cuenta personal
    <input style="margin-left: 30%" type="radio" name="account_type" value="Business" required>  Cuenta de negocios <br><br>

    <label><b>Nombre</b></label>
    <input  type="text" placeholder="Introducir nombre" name="username" required>

    <label><b>Correo</b></label><br>
    <input type="email" placeholder="Introducir correo" name="email" required><br>

    <label><b>Telefono</b></label><br>
    <input type="number" placeholder="Número de telefono" name="phone" required><br>

    <label for="psw"><b>Contraseña</b></label>
    <input type="password" placeholder="Introducir la contraseña" id="psw" name="password"  required>
   

    <label><b>Repetir Contraseña</b></label>
    <input type="password" placeholder="Repetir contraseña" name="rpt_password" required>

    <input style="margin-left: 5%" type="radio" name="gender" value="Male" required>   Masculino
    <input style="margin-left: 5%" type="radio" name="gender" value="Female" required>   Femenino
    <input style="margin-left: 5%" type="radio" name="gender" value="Other" required>   Otro <br>



    <input type="checkbox" checked="checked" required> Estoy de acuerdo
    <p data-toggle="modal" data-target="#myModal"  > Al crear una cuenta, usted acepta nuestros <a href="#">Términos y condiciones</a>.</p>

     <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 align="center" class="modal-title sign_up_form_model_header">Términos y condiciones</h4>
        </div>
        <div style="height:100%;" class="modal-body">
          <p style="font-size: 20px">Al elegir "Acepto" a continuación, acepta los Términos de servicio de Google.<br>

          También acepta nuestra Política de privacidad, que describe cómo procesamos su información, incluidos estos puntos clave:
<br>
Datos que procesamos cuando usas Google
Cuando configura una cuenta de Google, almacenamos la información que nos brinda, como su nombre, dirección de correo electrónico y número de teléfono.<br>
Cuando utiliza los servicios de Google para hacer cosas como escribir un mensaje en Gmail o comentar un video de YouTube, almacenamos la información que crea.
Cuando busca un restaurante en Google Maps o mira un video en YouTube, por ejemplo, procesamos información sobre esa actividad, incluida información como el video que vio, ID de dispositivo, direcciones IP, datos de cookies y ubicación.<br>
También procesamos los tipos de información descritos anteriormente cuando usa aplicaciones o sitios que usan servicios de Google como anuncios, Analytics y el reproductor de video de YouTube.
Dependiendo de la configuración de su cuenta, algunos de estos datos pueden estar asociados con su cuenta de Google y tratamos estos datos como información personal. Puede controlar cómo recopilamos y usamos estos datos en Mi cuenta (myaccount.google.com).<br>
Por qué lo procesamos
Procesamos estos datos para los fines descritos en nuestra política, que incluyen:
<br>
Ayudar a nuestros servicios a ofrecer más contenido útil y personalizado, como resultados de búsqueda más relevantes;
Mejorar la calidad de nuestros servicios y desarrollar otros nuevos;
Entregar anuncios personalizados, tanto en servicios de Google como en sitios y aplicaciones asociados con Google;
Mejorar la seguridad mediante la protección contra el fraude y el abuso; y
Realizar análisis y mediciones para comprender cómo se utilizan nuestros servicios.
Combinando datos<br>
También combinamos datos entre nuestros servicios y en sus dispositivos para estos fines. Por ejemplo, le mostramos anuncios basados ​​en información de su uso de la Búsqueda y Gmail, y usamos datos de billones de consultas de búsqueda para crear modelos de corrección ortográfica que usamos en todos nuestros servicios.</p>
        </div>
        <div class="modal-footer">
          <button style="width: 20%" type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>
  <!-- Model End -->


    <div class="clearfix">
      <button style="width: 20%;" type="submit" name="signupbtn">Inscribirse</button>
    </div>
  </div>
</form>



<?php include "footer.php" ?>

</body>
</html>