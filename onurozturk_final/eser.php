    <?php
    /* Bağlantı Kurulması */
    require_once("baglanti.php");
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, 
       "SELECT XR.EserKayitNO, XR.EserKayitTARIHI, XR.EserinAdi, XR.EserISBN, XR.EserinBYeri, XR.EserinBTarihi, XR.EserAciklama, CONCAT(YS.YazarAdi,' ', YS.YazarSoyadi) AS AdSoyad, ZT.YayineviAdi
       FROM eserler XR, yazar YS, yayinevi ZT 
       WHERE XR.YayineviKayitNO = ZT.YayineviKayitNO AND 
                XR.YazarKayitNO = YS.YazarKayitNO ");
    ?>

    <!DOCTYPE html>
    <html lang="tr"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Jekyll v3.8.6">
        <title>Kitap Eserleri</title>

        <!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

        <!-- Favicons -->
    <link rel="apple-touch-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
    <link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon.ico">
    <meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
    <meta name="theme-color" content="#563d7c">


        <style>
          .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
          }

          @media (min-width: 768px) {
            .bd-placeholder-img-lg {
              font-size: 3.5rem;
            }
          }
        </style>
        <!-- Custom styles for this template -->
        <link href="./katalog_files/navbar-top.css" rel="stylesheet">
      </head>
      <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
      <a class="navbar-brand" href="https://getbootstrap.com/docs/4.4/examples/navbar-static/#">Top navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.php">Ana Sayfa </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="eser.php">Kitap İşlemleri</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="yazar.php">Yazar İşlemleri</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="yayinevi.php">Yayinevi İşlemleri</a>
          </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <main role="main" class="container">
    <!-- KODLAR -->
    <h1>Kitap İşlemleri</h1>
    <p><a href="eser_ekle.php">Yeni Kitap Ekle</a></p>
    <?php
    echo("<table border=1 width=80%>");
        echo("<tr>");
        echo("<td><b>Eser Kayit NO</b></td>");
        echo("<td><b>Eser Kayit Tarihi</b></td>");
        echo("<td><b>Eser Adi</b></td>");
        echo("<td><b>Eser ISBN</b></td>");
        echo("<td><b>Eser Basim Yili</b></td>");
        echo("<td><b>Yazar NO</b></td>");
        echo("<td><b>Yayinevi NO</b></td>");
        echo("<td><b>Eser Aciklama</b></td>");
        echo("<td><b>Güncelle</b></td>");
        echo("<td><b>Sil</b></td>");
        echo("</tr>");
    /* Sorgu sonuçlarının yazdırılması */
    while($satir = mysqli_fetch_assoc($sorgu)){
        echo("<tr>");
        echo("<td>".$satir["EserKayitNO"]."</td>");
        echo("<td>".$satir["EserKayitTARIHI"]."</td>");
        echo("<td>".$satir["EserinAdi"]."</td>");
        echo("<td>".$satir["EserISBN"]."</td>");
        echo("<td>".$satir["EserinBTarihi"]."</td>");
        echo("<td>".$satir["AdSoyad"]."</td>");
        echo("<td>".$satir["YayineviAdi"]."</td>");
        echo("<td>".$satir["EserAciklama"]."</td>");
        echo("<td><a href='eser_guncellenecek.php?EserKayitNO=".$satir["EserKayitNO"]."'>Güncelle</a></td>");
        echo("<td><a href='eser_sil.php?EserKayitNO=".$satir["EserKayitNO"]."'>Sil</a></td>");
        echo("</tr>");
                }
    echo("</table>");
    ?>
    <!-- KODLAR -->
    </main>
    <script src="jquery-3.4.1.slim.min.js"></script>
          <script src="bootstrap.bundle.min.js"></script>

    </body></html>