<?php

require "../../config/dbConnect.php";

$db->exec("UPDATE comments SET seen='1' WHERE id='{$_POST['id']}'");