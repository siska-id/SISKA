<?php
if (!$_POST) {
    echo "Invalid Method";
    return FALSE;
} else {
header('Content-Type: application/json');
include "./db.php";

$id = $_POST['id'];
$stmt = $db->prepare("DELETE FROM user WHERE id = ?");
$result = $stmt->execute([$id]);

echo json_encode([
'id' => $id,
'success' => $result
]);
}