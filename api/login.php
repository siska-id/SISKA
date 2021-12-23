<?php
if (!$_POST){
    echo "Invalid Method";
    return FALSE;
} else {
    
header('Content-Type: application/json');
include "./db.php";

$email = $_POST['alamat_email'];
$password = $_POST['kata_sandi'];

$cekEmail = $db->prepare("SELECT * FROM user WHERE alamat_email = ? ");
$cekEmail->execute([$email]);
$cekRowEmail = $cekEmail->rowCount();

if ($cekRowEmail < 1){
    echo "Alamat Email tidak terdaftar!";
    return FALSE;
} else {
    $cekPass = $cekEmail->fetch(PDO::FETCH_ASSOC);
    $result = password_verify($password, $cekPass['kata_sandi']);

    echo json_encode([
        'Success' => $result
    ]);
}
}