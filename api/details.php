<?php
if (!$_POST) {
    echo "Invalid Method";
    return FALSE;
} else {
header('Content-Type: application/json');
include "./db.php";

$id = $_POST['id'];

$stmt = $db->prepare("SELECT * FROM user WHERE ID = ?");
$stmt->execute([$id]);
$result = $stmt->fetch(PDO::FETCH_ASSOC);

echo json_encode([
        'result' => $result
    ]);
}
?>
