<?php

$db_name = "siskadb";
$db_server = "localhost";
$db_user = "root";
$db_pass = "";


$conn = mysqli_connect($db_server, $db_user, $db_pass, $db_name) or die("Oopss... Gagal menyambung ke Database!");