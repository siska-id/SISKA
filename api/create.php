<?php
if (!$_POST) {
    echo "Invalid Method";
} else {
header('Content-Type: application/json');
include "./db.php";

$username = $_POST['nama_pengguna'];
$password = password_hash($_POST['kata_sandi'], PASSWORD_DEFAULT);
$email = $_POST['alamat_email'];
$noTelp = $_POST['no_telepon'];

$cekUsername = $db->prepare("SELECT * FROM user WHERE nama_pengguna= ?");
$cekEmail = $db->prepare("SELECT * FROM user WHERE alamat_email= ?");
$cekNoTelp = $db->prepare("SELECT * FROM user WHERE no_telepon= ?");

$cekUsername->execute([$username]);
$cekEmail->execute([$email]);
$cekNoTelp->execute([$noTelp]);

$cekRowUsername = $cekUsername->rowCount();
$cekRowEmail = $cekEmail->rowCount();
$cekRowNoTelp = $cekNoTelp->rowCount();

if ($cekRowUsername > 0) {
    echo "Nama Pengguna telah terdaftar!";
    return FALSE; 
} elseif ($cekRowEmail > 0) {
    echo "Alamat Email telah terdaftar!";
    return FALSE;
} elseif ($cekRowNoTelp > 0) {
    echo "No Telepon terlah terdaftar!";
    return FALSE;
} else {
$stmt = $db->prepare("INSERT INTO user (nama_pengguna, kata_sandi, alamat_email, no_telepon) VALUES (?, ?, ?, ?)");
$result = $stmt->execute([$username, $password, $email, $noTelp]);

echo json_encode([
'success' => $result
]);
}
}