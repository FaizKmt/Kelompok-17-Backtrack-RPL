<?php
    if (isset($_POST['submit'])) {
        $name       = $_POST['name'];
        $nohp      = $_POST['nohp'];
        $alamat      = $_POST['alamat'];
        $message    = $_POST['message'];
        $no_wa      = $_POST['noWA'];
        header("location:https://api.whatsapp.com/send?phone=$no_wa&text=Nama:%20$name%20%0DNohp:%20$nohp%20%0DAlamat:%20$alamat%20%0DPesan:%20$message");
    } else {
        echo "
            <script>
                window.location=history.go(-1);
            </script>
        ";
    }
?>