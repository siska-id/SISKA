<?php
header('Content-Type: application/json');
require 'db.php';

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $resp = array();
    $fullname = $_POST['nama_lengkap'];
    $email = $_POST['alamat_email'];
    $password = password_hash($_POST['kata_sandi'], PASSWORD_DEFAULT);
    $no_telp = $_POST['no_telepon'];
    $tgl_daftar = date("Y-m-d");
    
    $checkEmail = mysqli_query($conn, "SELECT * FROM signup_siska WHERE alamat_email=' . $email . '");
    $checkNoTelp = mysqli_query($conn, "SELECT * FROM signup_siska WHERE no_telpon=' . $no_telp . '");

    $result = mysqli_fetch_row($checkEmail);
    $result2 = mysqli_fetch_row($checkNoTelp);

    if ($result > 0) {
        echo 'Terisi';
    } elseif ($result2 == TRUE) {
        echo "Benar2";
    } else{
        echo 'Kosong';
    }
}
?>


