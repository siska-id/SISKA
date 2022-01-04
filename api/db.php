<?php

$db_name = "rait1349_siska";
$db_server = "localhost";
$db_user = "rait1349_adminsiska";
$db_pass = "iniAdminSiska123";

try {
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch (PDOException $e) {
    die("Oopss... Gagal menyambung ke database : " . $e->getMessage());
}