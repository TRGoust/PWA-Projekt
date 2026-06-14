<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <title><?php echo $_POST['naslov']; ?></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
    <div class="logo">BBC</div>

    <nav>
        <a href="index.html">Home</a>
        <a href="#">News</a>
        <a href="clanak.html">Sport</a>
        <a href="unos.html">Unos</a>
        <a href="#">Administracija</a>
    </nav>
</header>

<?php
$naslov = $_POST['naslov'];
$sazetak = $_POST['sazetak'];
$tekst = $_POST['tekst'];
$slika = $_POST['slika'];
$kategorija = $_POST['kategorija'];
?>

<div class="sport-banner">
    <h1><?php echo $kategorija; ?></h1>
</div>

<div class="article">

    <h1><?php echo $naslov; ?></h1>

    <img src="<?php echo $slika; ?>" class="article-image">

    <p><strong><?php echo $sazetak; ?></strong></p>

    <p><?php echo nl2br($tekst); ?></p>

</div>

<footer>
    Copyright © 2019 BBC.
</footer>

</body>
</html>