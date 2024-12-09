<?php
include('dbconn.php'); // Koneksi database

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = $_GET['id'];
    
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['confirm_delete'])) {
        $query = "DELETE FROM rekam_medis WHERE id = ?";
        $stmt = mysqli_prepare($conn, $query);
        mysqli_stmt_bind_param($stmt, 'i', $id);

        if (mysqli_stmt_execute($stmt)) {
            echo "<script>alert('Rekam medis berhasil dihapus!'); window.location.href='rekam_medis.php';</script>";
        } else {
            echo "Terjadi kesalahan: " . mysqli_error($conn);
        }
        mysqli_stmt_close($stmt);
    }
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Konfirmasi Hapus Rekam Medis</title>
    <script>
        function confirmDeletion(event) {
            event.preventDefault();
            if (confirm("Apakah Anda yakin ingin menghapus rekam medis ini?")) {
                document.getElementById('delete-form').submit();
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Konfirmasi Hapus Rekam Medis</h1>
        <form id="delete-form" method="POST">
            <button type="submit" name="confirm_delete" onclick="confirmDeletion(event)">Hapus</button>
        </form>
        <a href="admin.php" class="btn-back">Kembali ke Beranda</a>
    </div>
</body>
</html>
