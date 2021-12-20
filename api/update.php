<?php
error_reporting(0);
if (!$_POST) {
    echo "Invalid Method";
    return FALSE;
} else{
header('Content-Type: application/json');
include "./db.php";

$id = $_POST['id'];
$username = $_POST['nama_lengkap'];
$email = $_POST['alamat_email'];
$noTelp = $_POST['no_telepon'];

$stmt = $db->prepare("UPDATE user SET nama_lengkap = ?, kata_sandi = ? WHERE id = ?");
$result =  $stmt->execute([$username, $password, $id]);

echo json_encode([
'success' => $result
]);
}