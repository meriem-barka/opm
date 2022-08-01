<?php

    session_start();

    //A modifier en fonction de vos indentifiants de base de donnée
    $dbhost = 'localhost';
    $dbname = 'igloo';//Ne doit pas être modifié si vous avez appelé votre bdd "blog"
    $dbuser = 'root';
    $dbpswd = '';
    //A partir d'ici, vous ne devez plus rien modifier

    try{
        $db = new PDO('mysql:host='.$dbhost.';dbname='.$dbname,$dbuser,$dbpswd, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }catch(PDOexception $e){
        die("Une erreur est survenue lors de la connexion à la base de données");
    } 


// class Bdd {

//     protected $db;

//     function __construct(){

//         try {
//             $this->db = new PDO('mysql:host=localhost;dbname=igloo;charset=utf8','root','');
//             $this->db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
//         } catch (PDOException $e) {
//             echo 'Echec de la connexion : ' . $e->getMessage();
//             exit;
//         }
//     }
// }
 ?> 