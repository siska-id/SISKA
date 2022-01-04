<?php
header('Content-Type: application/json');
require "./db.php";
if($_SERVER['REQUEST_METHOD'] == "POST"){

    $fullname = filter_input(INPUT_POST, 'nama_lengkap', FILTER_SANITIZE_STRING);
    $email = filter_input(INPUT_POST, 'alamat_email', FILTER_SANITIZE_EMAIL);
    $noTelp = filter_input(INPUT_POST, 'no_telepon', FILTER_SANITIZE_NUMBER_INT);
    $password = password_hash($_POST['kata_sandi'], PASSWORD_DEFAULT);

    $checkExistEmailNoTelp = $db->prepare("SELECT * FROM userakun_siska WHERE alamat_email=:email OR no_telepon=:noTelp");
    $params = array(
        ":email" => $email,
        ":noTelp" => $noTelp
    );
    $checkExistEmailNoTelp->execute($params);
    $fetchEmailNoTelp = $checkExistEmailNoTelp->fetch(PDO::FETCH_OBJ);

    if (!$fetchEmailNoTelp) {
        echo "Berhasil";
    }elseif ($fetchEmailNoTelp->alamat_email) {
        echo "Alamat Email telah terdaftar!";
        return FALSE;
    }
}