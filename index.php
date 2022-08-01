<?php
session_start();
include 'config/dbConnect.php';

$pagesView = scandir('pagesView/');
if (isset($_GET['page']) && !empty($_GET['page'])) {
    if (in_array($_GET['page'] . '.php', $pagesView)) {
        $page = $_GET['page'];
    } else {
        $page = "error";
    }
} else {
    $page = "home";
}

$pages_functions = scandir('pagesFunctions/');
if (in_array($page . '.func.php', $pages_functions)) {
    include 'pagesFunctions/' . $page . '.func.php';
}
?>


<!DOCTYPE html>
<html>

<head>
     <meta charset="UTF-8">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.css" media="screen,projection" />
    <link rel="icon" href="img/accueil/IMG_6296.png" />
    <title>Blog IglooFood</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
    <?php

        if ($page != 'home') {

            include "require/topbar.php";
        }
        if ($page != 'home') { 
    ?>

    <div class="container">
        <?php } else { ?>
            <div>
        <?php  }
        ?>

        <?php
            include 'pagesView/' . $page . '.php';
            ?>
        </div>


            <!--Import jQuery before materialize.js-->
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
            <script type="text/javascript" src="js/materialize.js"></script>
            <script type="text/javascript" src="js/script.js"></script>
            <?php
            $pages_js = scandir('js/');
            if (in_array($page . '.func.js', $pages_js)) {
            ?>
                <script type="text/javascript" src="js/<?= $page ?>.func.js"></script>
            <?php
            }

            ?>

</body>

</html>