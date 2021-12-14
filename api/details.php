<?php
if (!$_POST) {
    echo "Invalid Method";
} else {
header('Content-Type: application/json');
include "./db.php";
if (isset($_POST['id'])) {
$id = $_POST['id'];

$stmt = $db->prepare("SELECT * FROM user WHERE ID = ?");
$stmt->execute([$id]);
$result = $stmt->fetch(PDO::FETCH_ASSOC);

if (isset($result)) {
    echo json_encode([
        'result' => $result
    ]);
}

}
}
?>
