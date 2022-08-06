<?php
    require "koneksi.php";
    $queryProduk = mysqli_query($con, "SELECT id, nama, harga, foto, detail FROM produk LIMIT 6")
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rega Komputer | Home</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="images/icon.jpg">
</head>
<body>
    <?php require "navbar.php"; ?>

    <!-- banner -->
    <div class="container-fluid d-flex align-items-center banner">
        <div class="container text-center text-white">
            <h1>Selamat datang di REGA_KOMPUTER</h1>
            <h3>Cari Produk Apa ?</h3>
                <div class="col-md-8 offset-md-2">
                    <form method="get" action="produk.php">
                        <div class="input-group input-group-lg my-4">
                            <input type="text" class="form-control" placeholder="Pencarian Produk" aria-label="Recipient's username" aria-describedby="basic-addon2" name="keyword">
                            <button type="submit" class="btn warna3 text-white px-5"> Cari </button>
                        </div>
                    </form>
                </div>
        </div>
    </div>

    <!-- kategori -->

    <div class="container-fluid py-5 warna4">
        <div class="container text-center">
            <h3 class="text-light">Kategori Terlaris</h3>

            <div class="row mt-5">
                <div class="col-md-4 mb-3">
                    <div class="highlight-kategori kategori-atk d-flex justify-content-center align-items-center"> 
                        <h4 class="text-white"> <a class="no-decoration" href="produk.php?kategori=Processor">Processor</a></h4>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="highlight-kategori kategori-makanringan d-flex justify-content-center align-items-center">
                        <h4 class="text-white"> <a class="no-decoration" href="produk.php?kategori=VGA">VGA</a></h4>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="highlight-kategori kategori-makanberat d-flex justify-content-center align-items-center">
                        <h4 class="text-white"><a class="no-decoration" href="produk.php?kategori=Memory ">Memory</a></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- about us -->

    <div class="container-fluid warna1 py-5">
        <div class="container text-center text-light">
            <h3>Tentang Kami</h3>
            <p class="fs-6 mt-3">Project ini kami buat untuk memenuhi Tugas dari mata kuliah Pemrograman WEB <br> Teknologi yang kami gunakan yaitu PHP dan MySQl serta framework Bootstrap 5 untuk tampilan User Interface</p>
            <a class="btn btn-secondary" href="tentangkami.php">Lihat Selengkapnya</a>
        </div>
    </div>

    <!-- produk -->

    <div class="container-fluid py-5 warna4">
        <div class="container text-center">
            <h2 class="text-light">Produk</h2>

            <div class="row mt-5">
                <?php while($data = mysqli_fetch_array($queryProduk)){ ?>
                <div class="col-sm-6 col-md-4 mb-3">
                    <div class="card h-100">
                        <div class="image-box">
                            <img src="images/<?php echo $data['foto']; ?>" class="card-img-top" alt="...">
                        </div>
                        <div class="card-body">
                            <h4 class="card-title"><?php echo $data['nama']; ?></h4>
                            <p class="card-text text-truncate"><?php echo $data['detail']; ?></p>
                            <p class="card-text text-harga"> Rp.<?php echo $data['harga']; ?></p>
                            <a href="produk-detail.php?nama=<?php echo $data['nama']; ?>" class="btn btn-outline-secondary">Lihat Detail</a>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <a class="btn btn-secondary mt-3 p-2 fs-5" href="produk.php"> Lihat Semua</a>
        </div>
    </div>

    <!-- footer -->
    <?php require "footer.php" ?>

    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="fontawesome/js/all.min.js"></script>
</body>
</html>