<?php
if (!$_POST) {
    echo "Invalid Method";
    return FALSE;
} else {
header('Content-Type: application/json');
include "./db.php";

$username = $_POST['nama_lengkap'];
$password = password_hash($_POST['kata_sandi'], PASSWORD_DEFAULT);
$email = $_POST['alamat_email'];
$noTelp = $_POST['no_telepon'];

$cekEmail = $db->prepare("SELECT * FROM user WHERE alamat_email= ?");
$cekNoTelp = $db->prepare("SELECT * FROM user WHERE no_telepon= ?");

$cekEmail->execute([$email]);
$cekNoTelp->execute([$noTelp]);

$cekRowEmail = $cekEmail->rowCount();
$cekRowNoTelp = $cekNoTelp->rowCount();

if ($cekRowEmail > 0) {
    echo "Alamat Email telah terdaftar!";
    return FALSE;
} elseif ($cekRowNoTelp > 0) {
    echo "No Telepon terlah terdaftar!";
    return FALSE;
} else {
$stmt = $db->prepare("INSERT INTO user (nama_lengkap, kata_sandi, alamat_email, no_telepon) VALUES (?, ?, ?, ?)");
$result = $stmt->execute([$username, $password, $email, $noTelp]);

echo json_encode([
'success' => $result
]);
}
}