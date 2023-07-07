<?php if(!isset($_SESSION)) session_start(); ?>

<!DOCTYPE html>
<html>
<head>
    <title>Pago</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="../css/style.css">

<script type="text/javascript" src="../js/phone_validation.js"></script>



    <style>

        .container{
            max-width: 600px;
            border: 1px solid gray;
            border-radius: 10px;
            padding: 40px;
            margin-top: 50px;
            margin-bottom: 15px;
        }

        .msg{
            margin: 30px auto;
            padding: 10px;
            border-radius: 5px;
            color: #3c763d;
            background: #dff0d8;
            border: 1px solid #3c763d;
            width: 50%;
            text-align: center;
        }

        /*li{*/
        /*font-family: 'Lobster', cursive;*/
        /*}*/
    </style>

</head>
<body>
<?php include "header.php" ?>
        <?php include "sidebar.php" ?>


    <div class="payment">
        <div style="margin-left: 10%;">
            <h1>Información del pago</h1>
            <h3>Ingrese la información de su tarjeta de crédito a continuación y haga clic en enviar.</h3>
        </div>

    </div>

    <?php if(isset($_SESSION['msg'])): ?>
        <div class="msg">
            <?php
                echo $_SESSION['msg'];
                unset($_SESSION['msg']);
            ?>
            <a href="paymentTwo.php" class="btn btn-info">Pago</a>
        </div>
    <?php endif; ?>


<div class="container">
    <form method="POST" action="../seller/storeDeliveryInfo.php" onsubmit="return !!(phonenumber(this) && validateCardNumber(this) && cardname(this) && delname(this) && scode(this) && expiry(this))">
        <label>Tarjeta de crédito aceptada</label>
        <div align="center" style="font-size: 35px;">
            <input type="radio" name="card" value="visa" required><i class="fa fa-cc-visa"></i>
            <input type="radio" name="card" value="master" required><i class="fa fa-cc-mastercard"></i>
            <input type="radio" name="card" value="amex" required><i class="fa fa-cc-amex"></i>
            <input type="radio" name="card" value="discover" required><i class="fa fa-cc-discover"></i>
        </div>

        <label>Card Number</label>
        <div align="center">
            <input class="form-control" type="number" name="cardNumber" required><br>
        </div>

        <label>Nombre en la tarjeta</label>
        <div align="center">
            <input class="form-control" type="text" name="holderName" required><br>
        </div>

        <label for="date">Fecha de caducidad (Formato: MM/AAAA)</label>
        <div align="center">
            <input type="text" class="form-control" name="expiryDate" required><br>
        </div>

        <label>Código de seguridad (3 dígitos)</label>
        <div align="center">
            <input class="form-control" type="number" name="sCode" required><br>
        </div>

        <label>Nombre</label>
        <div align="center">
            <input class="form-control" type="text" name="name" required><br>
        </div>

        <label>Correo</label>
        <div align="center">
            <input class="form-control" type="email" name="email" required><br>
        </div>

        <label>Dirección de entrega</label>
        <div align="center">
            <textarea name="deliAddress" class="form-control" id="" cols="50" rows="3" placeholder="Address please.." required></textarea>
        </div>


        <label>Número de telefono</label>
        <div align="center">
            <input class="form-control" type="number" name="phone" required><br>
        </div>


        <input type="submit" name="submit" class="btn btn-success">

    </form>
</div>


    <footer>
        <?php include "footer.php" ?>
    </footer>
</body>
</html>