<?php
require "../../config/dbConnect.php";
$db->exec("DELETE FROM comments WHERE id = {$_POST['id']}");