<?php

 


    function admin(){
        if(isset($_SESSION['admin'])){
            global $db;
            $a = [
                'email'     =>  $_SESSION['admin'],
                'role'      =>  'admin'
            ];

            $sql = "SELECT * FROM admins WHERE email=:email AND role=:role";
            $req = $db->prepare($sql);
            $req->execute($a);
            $exist = $req->rowCount($sql);

            return $exist;
        }else{
            return 0;
        }
    }

    function hasnt_password(){
        global $db;

        $sql = "SELECT * FROM admins WHERE email = '{$_SESSION['admin']}' AND password = ''";
        $req = $db->prepare($sql);
        $req->execute();
        $exist = $req->rowCount($sql);
        return $exist;
    }