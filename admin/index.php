<?php
require '../function/admin.php';

if (cekLoginAdmin() != true) {
    $_SESSION['pesan'] = "Anda belum masuk!! Silahkan masuk terlebih dahulu!";
    header('location:' . url . 'user/masuk.php');
}

$judul = home()['judul'];
$jmlPd = home()['jmlPd'];

$transaksi = home()['trans'];

require 'template_admin/header.php';
?>

<div class="heading text-center bg-light mt-2 p-3 ">
    <div class="row text-left ">
        <div class="col-4 border-right">
            <h5>Daftar Derek</h5>
            <p> <?= $jmlPd ?> Derek</p>
        </div>
        <div class="col-4 border-left">
            <h5>PENGGUNA</h5>
            <p><?= home()['akun'] ?> Akun</p>
        </div>
    </div>
</div>

<table class="transaksi table mt-3">
    <thead>
        
    </thead>
    <tbody>
       
    </tbody>
    <tfoot>
        <tr>
            <td>
            <a class="text-decoration-none" href="<?= url ?>admin/produk.php"> Masukkan Daftar Derek &raquo;</a>
            </td>
        </tr>
    </tfoot>
</table>

<?php require 'template_admin/footer.php' ?>