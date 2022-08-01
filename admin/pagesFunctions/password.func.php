<?php

    function update_password($password){
        global $db;
        $p = [
            'password'  =>  sha1($password),
            'session'   =>  $_SESSION['admin']
        ];

        $sql = "UPDATE admins SET password = :password WHERE email=:session";
        $req = $db->prepare($sql);
        $req->execute($p);
    }

    function hasnt_password(){
        global $db;
        $sql = "SELECT * FROM admins WHERE email = '{$_SESSION['admin']}' AND password = ''";
        $req = $db->prepare($sql);
        $req->execute();
        $exist = $req->rowCount($sql);

        return $exist ;
    }
?> 