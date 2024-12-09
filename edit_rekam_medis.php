<?php
include('dbconn.php'); // Koneksi database

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM rekam_medis WHERE id = ?";
    $stmt = mysqli_prepare($conn, $query);
    mysqli_stmt_bind_param($stmt, 'i', $id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $rekam_medis = mysqli_fetch_assoc($result);
    mysqli_stmt_close($stmt);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nama_pasien = htmlspecialchars(trim($_POST['nama_pasien']));
    $poli = htmlspecialchars(trim($_POST['poli']));
    $dokter = htmlspecialchars(trim($_POST['dokter']));
    $diagnosis = htmlspecialchars(trim($_POST['diagnosis']));
    $tanggal = $_POST['tanggal'];
    $catatan = htmlspecialchars(trim($_POST['catatan']));

    if ($nama_pasien && $poli && $dokter && $diagnosis && $tanggal) {
        $query = "UPDATE rekam_medis SET nama_pasien = ?, poli = ?, dokter = ?, 
                  diagnosis = ?, tanggal = ?, catatan = ? WHERE id = ?";
        $stmt = mysqli_prepare($conn, $query);
        mysqli_stmt_bind_param($stmt, 'ssssssi', $nama_pasien, $poli, $dokter, $diagnosis, $tanggal, $catatan, $id);

        if (mysqli_stmt_execute($stmt)) {
            echo "<script>alert('Rekam medis berhasil diperbarui!'); window.location.href='rekam_medis.php';</script>";
        } else {
            echo "Terjadi kesalahan: " . mysqli_error($conn);
        }
        mysqli_stmt_close($stmt);
    } else {
        echo "<script>alert('Harap isi semua data dengan benar.');</script>";
    }
}
?>
