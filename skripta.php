<?php
include 'connect.php';
define('UPLPATH', 'img/');

$naslov = $_POST['naslov'];
$sazetak = $_POST['sazetak'];
$tekst = $_POST['tekst'];
$slika = $_POST['slika'];
$kategorija = $_POST['kategorija'];

$arhiva = 0;

if(isset($_POST['arhiva'])){
    $arhiva = 1;
}

$stmt = mysqli_prepare($conn, "INSERT INTO vijesti (naslov, sazetak, tekst, slika, kategorija, arhiva) VALUES (?, ?, ?, ?, ?, ?)"
);

mysqli_stmt_bind_param($stmt, "sssssi", $naslov, $sazetak, $tekst, $slika, $kategorija, $arhiva);

if (!mysqli_stmt_execute($stmt)) {
    echo mysqli_error($conn);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title><?php echo $_POST['naslov']; ?></title>
</head>
<body>

<header>
    <div class="logo">BBC</div>

    <nav>
        <a href="index.php">Home</a>
        <a href="kategorija.php?kategorija=News">News</a>
        <a href="kategorija.php?kategorija=Sport">Sport</a>
        <a href="unos.php">Unos</a>
        <a href="administrator.php">Administracija</a>
        <a href="registracija.php">Registracija</a>
        <a href="login.php">Login</a>
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

    <img src="<?php echo UPLPATH.$slika; ?>" class="article-image">

    <p><strong><?php echo $sazetak; ?></strong></p>

    <p><?php echo nl2br($tekst); ?></p>

</div>

<footer>
    Josip Brkić, jbrkic@tvz.hr, 2026
</footer>
    
</body>
</html>