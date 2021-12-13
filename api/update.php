<?php
header('Content-Type: application/json');
include "./db.php";

$id = $_POST['id'];
$username = $_POST['nama_pengguna'];
$email = $_POST['alamat_email'];
$noTelp = $_POST['no_telepon'];

$stmt = $db->prepare("UPDATE user SET nama_pengguna = ?, kata_sandi = ? WHERE id = ?");
$result =  $stmt->execute([$username, $password, $id]);

echo json_encode([
'success' => $result
]);