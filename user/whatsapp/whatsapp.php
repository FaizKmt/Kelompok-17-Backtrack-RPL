<!DOCTYPE html>
<html lang="en">
<head>
    <title>Form Send WA</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/ddist/css/boostrap.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <section>
        <div class="container">
            <br><br>
            <h3>Auto Chat Ke Whatsapp</h3>
            <br><br>

            <div class="row">
                <div class="col-6">
                    <form action="send.php" method="post" target="_blank">
                        <div class="form-group">
                            <label for="name">Nama</label>
                            <input type="name" class="form-control" name="name" placeholder="Nama">
                        </div>
                        <div class="form-group">
                            <label for="nohp">No Handphone</label>
                            <input type="nohp" class="form-control" name="nohp" placeholder="08123456789">
                        </div>
                        <div class="form-group">
                            <label for="alamat">Alamat</label>
                            <input type="alamat" class="form-control" name="alamat" placeholder="Alamat">
                        </div>
                        <div class="form-group">
                            <label for="message">Kendala yang terjadi</label>
                            <textarea class="form-control" name="message" placeholder="Catatan" rows="3"></textarea>

                        </div>
                        <p>CATATAN: Jangan lupa setelah masuk ke WA silahkan anda kirim link Google Maps/Lokasi anda</p>
                        <input type="hidden" name="noWA" value="+6282199919953">
        
                        <button type="submit" name="submit" class="btn btn-primary">Kirim</button>

                    </form>
                </div>
            </div>
        </div>
    </section>
    
</body>
</html>