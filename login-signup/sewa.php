<?php 
 
include 'config.php';
 
error_reporting(0);
 
session_start();
 
if (isset($_SESSION['username'])) {
    header("Location: ../Append/index.html");
}
 
if (isset($_POST['submit'])) {
    $nama = $_POST['nama'];
    $identitas = $_POST['identitas'];
    $hariSewa = $_POST['hariSewa'];
    $jamAwal = $_POST['jamAwal'];
    $jamAkhir = $_POST['jamAkhir'];
    $noTelp = $_POST['noTelp'];
    $paket = $_POST['paket'];
 
     $sql = "INSERT INTO penyewaan (nama, identitas, hariSewa, jamAwal, jamAkhir, noTelp, paket)
        VALUES ('$nama', '$identitas', '$hariSewa', '$jamAwal', '$jamAkhir', '$noTelp', '$paket')";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            echo "<script>alert('Selamat, penyewaan telah berhasil diajukan!')</script>";
                
            } else {
                echo "<script>alert('Woops! Terjadi kesalahan.')</script>";
            }
            header("Location: ../Append/berhasilpesan.html");
}
 
?>
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" type="text/css" href="style.css">
 
    <title>sewagedung.id register</title>
</head>
<body>
    <div class="container">
        <form action="" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Form Penyewaan</p>
            <div class="input-group">
                <input type="text" placeholder="Nama" name="nama" value="<?php echo $nama; ?>" required>
            </div>
            <div class="input-group">
                <input type="text" placeholder="No. Identitas (KK/KTP/SIM/)" name="identitas" value="<?php echo $identitas; ?>" required>
            </div>
            <div class="input-group">
                <input type="date" placeholder="Hari Sewa" name="hariSewa" value="<?php echo $hariSewa; ?>" required>
            </div>
            <div class="input-group">
                <input type="time" placeholder="Jam Awal Sewa" name="jamAwal" value="<?php echo $jamAwal; ?>" required>
            </div>
            <div class="input-group">
                <input type="time" placeholder="Jam Akhir Sewa" name="jamAkhir" value="<?php echo $jamAkhir; ?>" required>
            </div>
            <div class="input-group">
                <input type="text" placeholder="No. Telepon" name="noTelp" value="<?php echo $noTelp; ?>" required>
            </div>
            <div class="input-group">
                <input type="select" placeholder="Jenis penyewaan">
                <select name="paket" value="<?php echo $paket; ?>" required>
                    <option value="1">Lapangan Futsal</option>
                    <option value="2">Lapangan Badminton</option>
                    <option value="3">Gedung Rapat</option>
                    <option value="4">Gedung Pertemuan</option></select>
            </div>
            <div class="input-group">
                <button name="submit" class="btn">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>