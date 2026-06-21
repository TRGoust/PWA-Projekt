<?php
session_start();
include 'connect.php';
define('UPLPATH', 'img/');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Registracija</title>
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

<main class="container">
    <div class="article">
        <form method="POST" action="registracija.php">

            Korisničko ime:<br>
            <input type="text" name="username" required><br><br>

            Ime:<br>
            <input type="text" name="ime" required><br><br>

            Prezime:<br>
            <input type="text" name="prezime" required><br><br>

            Lozinka:<br>
            <input type="password" name="password1" required><br><br>

            Ponovi lozinku:<br>
            <input type="password" name="password2" required><br><br>

            <button class="edits" type="submit">Registriraj se</button>

        </form>
    </div>
</main>

<?php

if (
    isset($_POST["username"]) &&
    isset($_POST["ime"]) &&
    isset($_POST["prezime"]) &&
    isset($_POST["password1"]) &&
    isset($_POST["password2"])
) {

    $username = $_POST["username"];
    $ime = $_POST["ime"];
    $prezime = $_POST["prezime"];
    $password1 = $_POST["password1"];
    $password2 = $_POST["password2"];

    if ($password1 != $password2) {
        die("Lozinke se ne podudaraju!");}

    $hash = password_hash($password1, CRYPT_BLOWFISH);

    $razina = "user";

    $stmt = mysqli_prepare(
        $conn,
        "INSERT INTO korisnik (username, ime, prezime, password, razina)
         VALUES (?, ?, ?, ?, ?)"
    );
    if (!$stmt) {
    die("Prepare failed: " . mysqli_error($conn));}

    mysqli_stmt_bind_param($stmt, "sssss", $username, $ime, $prezime, $hash, $razina);

    if (mysqli_stmt_execute($stmt)) {
        echo "<p class='warning>'Registracija uspješna!</P>";
    } else {
        echo "Greška pri registraciji!";
    }

    mysqli_stmt_close($stmt);
}

?>
    
</body>
</html>