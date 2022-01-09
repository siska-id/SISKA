<?php

/*
DOKUMENTASI SINGKAT

Nama Request POST
~ Nama Lengkap = fullname
~ Alamat Email = email
~ Nomor Telepon = telp
~ Kata Sandi = pass

*/

header('Content-Type: application/json');
require_once "db.php";
session_start();
// error_reporting(0);

if (function_exists($_GET['function'])) {
    $_GET['function']();
} else {
    $response = array(
        'status' => 0,
        'message' => 'Page not found!'
    );
    echo json_encode($response);
}


# Function untuk Verifikasi masuk User.
function login_user()
{
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        global $db;
        $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
        $password = $_POST['pass'];
        $query = $db->prepare("SELECT * FROM userakun_siska WHERE alamat_email=:email");
        $params = array(
            ":email" => $email,
        );
        $query->execute($params);
        $fetchData = $query->fetch(PDO::FETCH_OBJ);
        $count = $query->rowCount();

        if ($count < 1) {
            $response = array(
                'status' => 0,
                'message' => 'Alamat Email tidak terdaftar!'
            );
        } elseif (!$checkPass = password_verify($password, $fetchData->kata_sandi)) {
            $response = array(
                'status' => 0,
                'message' => 'Kata Sandi salah!'
            );
        } else {
            $_SESSION['login'] = $fetchData->alamat_email;
            $response = array(
                'status' => 1,
                'message' => "Login Berhasil!"
            );
        }
    } else {
        $response = array(
            'status' => 0,
            'message' => "Invalid Request Method!"
        );
    }
    echo json_encode($response);
}



#Function untuk mendaftarkan user.
function register_user()
{
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        global $db;
        $fullname = filter_input(INPUT_POST, 'fullname', FILTER_SANITIZE_STRING);
        $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
        $noTelp = filter_input(INPUT_POST, 'telp', FILTER_SANITIZE_NUMBER_INT);
        $password = password_hash($_POST['pass'], PASSWORD_DEFAULT);

        $query = $db->prepare("SELECT * FROM userakun_siska WHERE alamat_email=:email or no_telepon=:notelp");
        $params = array(
            ":email" => $email,
            ":notelp" => $noTelp
        );
        $query->execute($params);
        $count = $query->rowCount();

        if ($count == TRUE) {
            $response = array(
                'status' => FALSE,
                'message' => "Alamat Email atau No Telepon telah terdaftar!"
            );
        } else {
            $query = $db->prepare("INSERT INTO userakun_siska (nama_lengkap, alamat_email, kata_sandi, no_telepon) VALUES (:fullname, :email, :pass ,:notelp)");
            $params = array(
                ":fullname" => $fullname,
                ":email" => $email,
                ":pass" => $password,
                ":notelp" => $noTelp
            );
            $saved = $query->execute($params);
            if ($saved) {
                $response = array(
                    'status' => TRUE,
                    'message' => "Registrasi user berhasil!"
                );
            } else {
                $response = array(
                    'status' => FALSE,
                    'message' => "Registrasi user gagal!"
                );
            }
        }
    } else {
        $response = array(
            'status' => 0,
            'message' => "Invalid Request Method!"
        );
    }
    echo json_encode($response);
}
