<?php

    //fonction pour sécuriser les données
    function valid_input($data){
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlentities($data);
        return $data;
    }
    
    
    function security($input){
        if (!empty($input)
        && strlen($input) <= 20
        && preg_match("^[A-Za-z '-]+$",$input))
        {
            return $input;
        }else {
            return false;
        }
    }
    

    function valid_email($email){
        if(!empty($mail)
        && filter_var($mail, FILTER_VALIDATE_EMAIL))
        {
            return $email;
        }else {
            return false;
        }
    }


?>