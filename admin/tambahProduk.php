<?php
require '../function/admin.php';
if (cekLoginAdmin() === false) {
    $_SESSION['pesan'] = "Anda belum masuk!! Silahkan masuk terlebih dahulu!";
    header('location:' . url . 'user/masuk.php');
}

if (isset($_POST['simpan'])) {
    global $konek;
    $nama = $_POST['nama'];
    $harga = $_POST['harga'];
    $derek = $_POST['derek'];
    $nohp = $_POST['nohp'];
    $kategori = $_POST['kategori'];
    $daya = $_POST['daya'];
    $deskripsi = $_POST['deskripsi'];
    $sumber = @$_FILES['file']['tmp_name'];
    $target = '../assets/images/produk';
    $nama_file = @$_FILES['file']['name'];
    $pindah = move_uploaded_file($sumber,$target.$nama_file);
if($pindah){
    $sql = mysqli_query($konek, "INSERT INTO produk VALUES(null,'$nama','$derek','$harga','$nama_file','$kategori','$deskripsi','','','$nohp','$daya')");
    if($sql){
        header('location:produk.php');
    }
}
}

$judul = 'Tambah Produk | Admin';
require 'template_admin/header.php';
?>

<div>
    <?php if (isset($_GET['pesan'])) : ?>
        <div id="pesan" class="<?= $_GET['pesan'] ?>"></div>
    <?php endif; ?>
    <div class="card w-100 text-dark ">
        <div class="card-body border-top">
            <h5 class="card-title text-uppercase">tambah Data</h5>
        </div>
        <form class="ml-3" method="POST" action="" enctype="multipart/form-data">
            <div class="row">

                <div class="form-group mx-2 col-sm-5 ">
                    <label for="nama">Nama Supir</label>
                    <input class="form-control" type="text" name="nama" id="nama" >
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
                </div>
                
                <div class="form-group mx-2 col-sm-5 ">
                    <label for="harga">harga</label>
                    <input class="form-control" type="number" name="harga" id="harga" >
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
                </div>
                <div class="form-group mx-2 col-sm-5 ">
                    <label for="derek">Nama Derek</label>
                    <input class="form-control" type="text" name="derek" id="derek" >
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
                 </div>
                 <div class="form-group mx-2 col-sm-5 ">
                    <label for="nohp">No Handphone</label>
                    <input class="form-control" type="number" name="nohp" id="nohp" >
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
            </div>
            </div>

            <div class="row">
                <div class="form-group mx-2 col-sm-5 ">
                    <label for="kategori">kategori</label>
                    <select class="form-control" name="kategori" id="kategori">
                        <option>--Pilih--</option>
                        <option value="Derek Boom">Derek Boom</option>
                        <option value="Derek Tarik">Derek Tarik</option>
                        <option value="Derek Roda Depan Diangkat">Derek Roda Depan Diangkat</option>
                        <option value="Derek Towing">Derek Towing</option>
                        <option value="Derek Hidrolik">Derek Hidrolik</option>
                    </select>
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
                </div>

                <div class="form-group mx-2 col-sm-5 ">
                    <label for="daya">Daya Tarik</label>
                    <input class="form-control" type="number" name="daya" id="daya" >
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
                </div>
            </div>
    
    </div>
            <div class="row">
                <div class="form-group mx-2 col-sm-5 ">
                    <label for="deskripsi">deskripsi</label>
                    <textarea class="form-control" type="text" name="deskripsi" id="deskripsi"></textarea>
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="form-group mx-2 col-sm-3 ">
                    <label for="gambar">gambar</label>
                    <input class="form-control" type="file" name="file" id="gambar">
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
                </div>
                <div class="ol-4">

                </div>
            </div>
            <div class=" text-center my-3">
                <button type="submit" name="simpan" class="btn btn-sm btn-primary w-25" href="#" class="card-link">Simpan</button>
                <a href="<?= url ?>admin/detailProduk.php/?id=<?= $produk['produk']->id_produk ?>" class="btn btn-sm btn-danger w-25" class="card-link">Batal</a>
            </div>
        </form>
    </div>
</div>

<?php require 'template_admin/footer.php' ?>