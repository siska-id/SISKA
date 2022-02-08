<?php

date_default_timezone_set('Asia/Jakarta');
header('Content-Type: application/json');
require_once "db.php";
session_start();
error_reporting(0);

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
                'message' => 'Alamat Email tidak terdaftar!',
                'errs' => "email"
            );
        } elseif (!$checkPass = password_verify($password, $fetchData->kata_sandi)) {
            $response = array(
                'status' => 0,
                'message' => 'Kata Sandi salah!',
                'errs' => "password"
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



function update_akta_kelahiran()
{
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        global $db;
        $session = $_SESSION['login'];
        if (isset($session)) {
            $qry = $db->prepare("SELECT * FROM userakun_siska WHERE alamat_email = '$session'");
            $qry->execute();
            $fetchData = $qry->fetch(PDO::FETCH_OBJ);

            $userID = $fetchData->id_user;
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
            $updated_at  = date('d-m-Y H:i:s');
            $params = array(
                ":userid" => $userID,
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
                ":nipkepdinas" => $nipKepDinas,
                ":created_at" => $created_at
            );

        }
    }
}




#Function untuk menambahkan/mendaftar akta kelahiran
function insert_akta_kelahiran()
{
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        global $db;
        $session = $_SESSION['login'];
        if (isset($session)) {
            $qry = $db->prepare("SELECT * FROM userakun_siska WHERE alamat_email = '$session'");
            $qry->execute();
            $fetchData = $qry->fetch(PDO::FETCH_OBJ);

            $userID = $fetchData->id_user;
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
            $created_at = date('d-m-Y H:i:s');
            $params = array(
                ":userid" => $userID,
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
                ":nipkepdinas" => $nipKepDinas,
                ":created_at" => $created_at
            );

            $query = $db->prepare("INSERT INTO aktakelahiran_siska (
            nomor_aktakelahiran, 
            tempat_lahir, 
            tanggal_lahir, 
            bulan_lahir, 
            tahun_lahir, 
            nama_lengkap, 
            keterangan_anak_nomor, 
            ketetapantempat_dibuataktakelahiran, 
            tanggalkeluar_aktakelahiran,
            bulankeluar_aktakelahiran,
            tahunkeluar_aktakelahiran,
            keterangankepaladinaskependudukan_danpencatatansipil,
            namakepaladinaskependudukan_danpencatatansipil,
            nipkepaladinaskependudukan_danpencatatansipil,
            created_at,
            created_by) VALUES (:noakta, :tempatlahir, :tanggallahir, :bulanlahir, :tahunlahir, :fullname, :anakno, :tempatdibuat, :tanggalkeluar, :bulankeluar, :tahunkeluar, :ketkepdinas, :namakepdinas, :nipkepdinas, :created_at, :userid) ");

            $insert = $query->execute($params);
            if ($insert) {
                $response = array(
                    "status" => 1,
                    "message" => "Berhasil membuat Akta Kelahiran atas nama : " . $namaLengkap
                );
            } else {
                $response = array(
                    "status" => 0,
                    "message" => "Gagal membuat akta kelahiran atas nama : " . $namaLengkap
                );
            }
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



function insert_kartu_keluarga()
{
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        global $db;
        $session = $_SESSION['login'];
        if (isset($session)) {
            $qry = $db->prepare("SELECT * FROM userakun_siska WHERE alamat_email = '$session'");
            $qry->execute();
            $fetchData = $qry->fetch(PDO::FETCH_OBJ);

            $userid = $fetchData->id_user;
            $nokk = $_POST['nokk'];
            $nama_kepkeluarga = $_POST['namakepkel'];
            $alamatkk = $_POST['alamatkk'];
            $rtrw = $_POST['rt_rw'];
            $desa_kelurahan = $_POST['desakel'];
            $kecamatan = $_POST['kecamat'];
            $kab_kota = $_POST['kabkota'];
            $kodepos = $_POST['kodepos'];
            $provinsi = $_POST['provinsi'];
            $no_urut_keluarga = $_POST['nourtkel'];
            $namalngkap = $_POST['namalngkap'];

        }
    }
}