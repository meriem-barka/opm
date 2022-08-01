<?php

    function get_post(){

        global $db;
        $req = $db->query("SELECT * FROM posts INNER JOIN admins ON posts.writer=admins.email WHERE posts.id = '{$_GET['id']}'");

        $result = $req->fetchObject();
        return $result;
    }

    function edit($title,$content,$posted,$id){

        global $db;

        $e = [
            'title'     =>    $title,
            'content'   =>    $content,
            'posted'    =>    $posted,
            'id'        =>    $id,
        ];

        $sql = "UPDATE posts SET title=:title, content=:content, date=NOW(), posted=:posted WHERE id=:id";
        $req = $db->prepare($sql);
        $req->execute($e);
    }

    
    function deletePostId($id){

        global $db;

        $d = [
            'id' =>    $id,
        ];

        // $sql = "DELETE FROM posts WHERE id = :id";
        $sql = "DELETE FROM `posts` WHERE `posts`.`id` = :id ";
        $req = $db->prepare($sql);
        $req->execute($d);
        // header('location:index.php');
    }

?>