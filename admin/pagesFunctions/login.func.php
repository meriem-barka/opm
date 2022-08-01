<?php

    function get_login($email){

        global $db;
        $req = $db->prepare("SELECT * FROM admins WHERE email = $email");
        $req->execute($email);
        $result = $req->fetchAll();
        return $result;
        var_dump($result);
    }
