<?php

require "../login-system/db.php";
if(!isset($_SESSION)) session_start();

if(isset($_SESSION['logged_in']) && $_SESSION['logged_in']==1){
    $email = $_SESSION['email'];
}

if(isset($_GET["submit"])){

    $to = $_SESSION['mail']; // this is your Email address
    $from = "zuzukierf1000@gmail.com"; // this is the sender's Email address
    $subject = "Order Confirmed";
    $delId = $_SESSION['delId'];
    $name = $_SESSION['name'];
    $message = 'Hola ' .$name.',
    Gracias por comprar en byznez.com Su pedido  '. $delId.'  ha sido colocado.';
    $headers = "From: ".$from . "\r\n" . "CC: ".$from;
    mail($to,$subject,$message,$headers);

    header('location: success.php');
}

if(isset($_GET['del'])){
    $sId = $_GET['del'];
    $delQuery = " DELETE FROM `delivery_info` WHERE `delivery_info`.`sId` = '$sId'  ";
    mysqli_query($mysqli,$delQuery);
    header('location: payment.php');
}

$sId = session_id();
$result = $mysqli->query("SELECT * FROM cart WHERE sId='$sId'");
$delId = $_SESSION['delId'];
$result2 = $mysqli->query("SELECT * FROM delivery_info WHERE id='$delId'");
$deliResult = $result2->fetch_assoc();

?>



<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="../css/style.css">

    <title>Echa un vistazo| Artículo</title>
</head>
<body>
<?php include "header.php" ?>
<?php include "sidebar.php" ?>

<div class="check_out_item">
    <h3>Pediste estos productos</h3>

    <table>
        <tr >
            <th>SL</th>
            <th>Artículo</th>
            <th>Cantidad</th>
            <th>Precio unitario</th>
            <th>Totales</th>
        </tr>


        <?php
        $i = 0;
        $sum = 0;
        while ($cartInfo = mysqli_fetch_array($result)){
            $i++;
            ?>
            <tr>
                <td><?= $i; ?></td>
                <td>
                    <p>
                        <!--                    <img src="../images/logo.png">-->
                        <?php echo "<img src='../seller/productPic/".$cartInfo['proPic']."'>"; ?>
                        <?= $cartInfo['proName']; ?> <br>
                        Size: <?= $cartInfo['size']; ?>
                    </p>
                </td>
                <td><?= $cartInfo['customerQty']; ?></td>
                <td>$ <?= $cartInfo['price']; ?></td>
                <td>$ <?= $total = ($cartInfo['price'] * $cartInfo['customerQty']); ?></td>

            </tr>
            <?php $sum = ($sum + $total); ?>
        <?php } ?>
    </table>
</div>

<div class="check_out_item_proceed">
    <p style="font-size: 20px;">
        Total Productos: $<?= $sum; ?><br>
        Envío&nbsp;&nbsp;&nbsp;&nbsp;: $ <?= $shippingCost=100; ?><br>
        Total &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: $ <?= $grandTotal = ($sum + $shippingCost); ?>

        <a href="?submit"><button class="btn" type="submit">Confirmar orden</button></a>
    </p>
</div>

<div style="float: left; border-bottom: 2px solid gray; width: 35%; margin-left: 5%;margin-top: -5%">
    <h3>Detalles de envío</h3>
    <p>
        <b>Nombre: <?= $deliResult['name']; ?></b><br>
        <b>Dirección: <?= $deliResult['deliAddress']; ?></b>   <br>
        <b>Telefono: <?= $deliResult['phone']; ?></b>
    </p>
    <a href="?del=<?= $sId; ?>" class="btn btn-danger" style="background-color: #F8A036;border: none">Añadir nueva dirección</a>
</div>



<div style="margin-top: 250px">
    <?php include "address.php" ?>
    <?php include "footer.php" ?>
</div>

</body>
</html>