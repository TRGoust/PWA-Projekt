<?php 
session_start();
include 'connect.php';
define('UPLPATH', 'img/');
$id = $_GET['id'];

$query = "SELECT * FROM vijesti
WHERE id=$id";

$result = mysqli_query($conn,$query);

$row = mysqli_fetch_array($result);?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>BBC Sport</title>
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
        <div class="user">
        <?php
        if (isset($_SESSION["user"])) {
            echo "Ulogiran: " . $_SESSION["user"];
        } else {
            echo "Niste prijavljeni";
        }
        if (isset($_SESSION["user"])) { ?>
            <a class="edits" href="logout.php">Logout</a>
        <?php } ?>
    </div>
</header>

<div class="sport-banner">
    <h1><?php echo strtoupper($row['kategorija']); ?></h1>
</div>

<div class="article">

    <div class="welcome">
        <h1><?php echo $row['naslov']; ?></h1>
        <span><?php echo $row['datum']; ?></span>
    </div>
    

    <img src="<?php echo UPLPATH.$row['slika']; ?>">

    <p><strong><?php echo $row['sazetak']; ?></strong></p>

    <p><?php echo $row['tekst']; ?></p>

</div>

<footer>
    Josip Brkić, jbrkic@tvz.hr, 2026
</footer>
    
</body>
</html>