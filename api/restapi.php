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



#Function mengecek apakah user telah login
function is_user_login()
{
    global $db;
    $session = $_SESSION['login'];
    if (isset($session)) {
        $query = $db->prepare("SELECT * FROM userakun_siska WHERE alamat_email=:email");
        $params = array(
            ":email" => $session
        );
        $query->execute($params);
        $fetchData = $query->fetch(PDO::FETCH_OBJ);
        $response = array(
            'status' => 1,
            'message' => "User telah login!"
        );
    } else {
        $response = [
            "status" => 0,
            "message" => "User belum login, silahkan login terlebih dahulu!"
        ];
    }
    $result = json_encode($response);
    echo $result;
    return $result;
}

function logout_user()
{
    global $db;
    $session = $_SESSION['login'];
    if (!isset($session)) {
        $response = array(
            'status' => 0,
            'message' => "User belum login, silahkan login terlebih dahulu!"
        );
    } elseif (isset($session)) {
        $dest = session_destroy();
        if ($dest) {
            $response = array(
                'status' => 1,
                'message' => 'Berhasil Logout!'
            );
        }
    }
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
        $desauser = filter_input(INPUT_POST, 'desauser', FILTER_SANITIZE_STRING);
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

        if ($count == 1) {
            $response = array(
                'status' => 0,
                'message' => "Alamat Email atau No Telepon telah terdaftar!"
            );
        } else {
            $query = $db->prepare("INSERT INTO userakun_siska (nama_lengkap, alamat_email, kata_sandi, no_telepon, desa_user) VALUES (:fullname, :email, :pass ,:notelp, :desauser)");
            $params = array(
                ":fullname" => $fullname,
                ":email" => $email,
                ":desauser" => $desauser,
                ":pass" => $password,
                ":notelp" => $noTelp
            );
            $saved = $query->execute($params);
            if ($saved) {
                $response = array(
                    'status' => 1,
                    'message' => "Registrasi user berhasil!"
                );
            } else {
                $response = array(
                    'status' => 0,
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


#Function untuk menambahkan/mendaftar akta kelahiran
function insert_akta_kelahiran()
{
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        $jsondata = json_decode(is_user_login());
        if ($jsondata->status == 1) {
            $noAktaKelahiran = $_POST['noAktek'];
            $namaLengkap = $_POST['fullname'];
            $tempatLahir = $_POST['tempatlahir'];
            $tanggalLahir = $_POST['tanggal'];
            $bulanLahir = $_POST['bulan'];
            $tahunLahir = $_POST['tahun'];
            $anakno = $_POST['anakNo'];
            $tempatdibuat = $_POST['tempatdibuat'];
            $tanggalKeluar = $_POST['tanggalKeluar'];
            $bulanKeluar = $_POST['bulanKeluar'];
            $tahunKeluar = $_POST['tahunKeluar'];
            $ketKepDinas = $_POST['ketkepdinas'];
            $namaKepDinas = $_POST['namakepdinas'];
            $nipKepDinas = $_POST['nipKepDinas'];

            $params = array(
                ":noakta" => $noAktaKelahiran,
                ":fullname" => $namaLengkap,
                ":tempatlahir" => $tempatLahir,
                ":tanggallahir" => $tanggalLahir,
                ":bulanlahir" => $bulanLahir,
                ":tahunlahir" => $tahunLahir,
                ":anakno" => $anakno,
                ":tempatdibuat" => $tempatdibuat,
                ":tanggalkeluar" => $tanggalKeluar,
                ":bulankeluar" => $bulanKeluar,
                ":tahunkeluar" => $tahunKeluar,
                ":ketkepdinas" => $ketKepDinas,
                ":namakepdinas" => $namaKepDinas,
                ":nipkepdinas" => $nipKepDinas
            );
        } else {
            $response = array(
                'status' => 0,
                'message' => "User belum login, silahkan login terlebih dahulu!"
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
