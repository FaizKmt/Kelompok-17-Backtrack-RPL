<?php
require '../function/admin.php';
if (cekLoginAdmin() === false) {
    $_SESSION['pesan'] = "Anda belum masuk!! Silahkan masuk terlebih dahulu!";
    header('location:' . url . 'user/masuk.php');
}

$id = $_GET['id'];
$produk = detailProduk($id);
$judul = $produk['judul'];

// ---- Ubah Produk ----//
if (isset($_POST['ubah'])) {
    ubahProduk($id, $_POST);
}

require 'template_admin/header.php';
?>
<div class=" detail-produk p-3 mt-3 bg-primary text-light ">
    <div class="judul">
        <h5>Detail Derek <?= $produk['produk']->kategori . " " . $produk['produk']->derek ?></h5>
    </div>
    <div class="card w-100 text-dark my-3" style="width: 18rem;">
        <img style="" src=" <?= url ?>assets/images/produk/<?= $produk['produk']->gambar ?>" class="card-img-top m-auto w-25" alt="...">
        <div class="card-body border-top">
            <h5 class="card-title"><?= $produk['produk']->nama ?></h5>
            <p class="card-text"><?= $produk['produk']->deskripsi ?></p>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Harga : Rp<?= number_format($produk['produk']->harga, 0) ?></li>
            <li class="list-group-item">no hp : <?= $produk['produk']->nohp ?></li>
            <li class="list-group-item">daya : <?= $produk['produk']->daya ?></li>
            <li class="list-group-item">Kategori : <?= $produk['produk']->kategori ?></li>
        </ul>
        
    </div>
    <div id="ubah-data">
        <div class="card w-100 text-dark ">
            <div class="card-body border-top">
                <h5 class="card-title text-uppercase">Ubah Data</h5>
            </div>
            <form class="ml-3" method="POST" action="" enctype="multipart/form-data">
                <div class="row">
                    <div class="form-group mx-2 col-sm-5 ">
                        <label for="nama">Nama Supir</label>
                        <input class="form-control " type="text" name="nama" id="nama" value="<?= (isset($_SESSION['nama']) ? $_SESSION['nama'] : $produk['produk']->nama) ?>">
                    </div>
                    <div class="form-group mx-2 col-sm-5 ">
                        <label for="harga">harga</label>
                        <input class="form-control " type="number" name="harga" id="harga" value="<?= (isset($_SESSION['harga']) ? $_SESSION['harga'] : $produk['produk']->harga) ?>">
                    </div>
                    <div class="form-group mx-2 col-sm-5 ">
                    <label for="derek">Nama Derek</label>
                    <input class="form-control" type="text" name="derek" id="derek" value="<?= (isset($_SESSION['derek']) ? $_SESSION['derek'] : $produk['produk']->derek) ?>" >
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
                 </div>
                 <div class="form-group mx-2 col-sm-5 ">
                    <label for="nohp">No Handphone</label>
                    <input class="form-control" type="number" name="nohp" id="nohp" value="<?= (isset($_SESSION['nohp']) ? $_SESSION['nohp'] : $produk['produk']->nohp) ?>">
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
            </div>
                </div>
                <div class="row">
                    <div class="form-group mx-2 col-sm-5 ">
                        <label for="kategori">kategori</label>
                        <select class="form-control " name="kategori" id="kategori">
                            <option>--Pilih--</option>
                            <option value="Ponsel">Ponsel</option>
                            <option value="Laptop">Laptop</option>
                            <option value="Komputer">Komputer</option>
                            <option value="tarik">Tarik</option>
                        </select>
                    </div>
                    <div class="form-group mx-2 col-sm-5 ">
                    <label for="daya">Daya Tarik</label>
                    <input class="form-control" type="number" name="daya" id="daya" value="<?= (isset($_SESSION['daya']) ? $_SESSION['daya'] : $produk['produk']->daya) ?>">
                    <div class="invalid-feedback">Example invalid custom select feedback</div>
                </div>
            </div>

                <div class="row">
                    <div class="form-group mx-2 col-sm-5 ">
                        <label for="deskripsi">deskripsi</label>
                        <textarea class="form-control " type="text" name="deskripsi" id="deskripsi"><?= (isset($_SESSION['deskripsi']) ? $_SESSION['deskripsi'] : $produk['produk']->deskripsi) ?></textarea>
                    </div>
                </div>
        
                <div class="row mb-3">
                    <div class="form-group mx-2 col-sm-3 ">
                        <label for="gambar">gambar</label>
                        <input class="form-control " type="file" name="gambar" id="gambar">
                    </div>
                </div>
                <input type="hidden" name="create" value="<?= $produk['produk']->create ?>">
                <div class=" text-center my-3">
                    <button type="submit" name="ubah" class="btn btn-sm btn-primary w-25" class="card-link">Simpan</button>
                    <a id="ubah-data-href" href="<?= url ?>admin/Produk.php/?id=<?= $produk['produk']->id_produk ?>" class="btn btn-sm btn-danger w-25" class="card-link">Batal</a>
                </div>
            </form>
        </div>
    </div>
</div>
<?php require 'template_admin/footer.php' ?>