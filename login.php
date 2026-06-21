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
    <title>Login</title>
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

<div class="article">
    <form method="POST">

        Korisničko ime:<br>
        <input type="text" name="username"><br><br>

        Lozinka:<br>
        <input type="password" name="password"><br><br>

        <button class="edits" type="submit" name="login">Login</button>

    </form>
</div>

<?php

if (isset($_POST["login"])) {

    $username = $_POST["username"];
    $password = $_POST["password"];



    $stmt = mysqli_prepare(
        $conn,
        "SELECT * FROM korisnik WHERE username = ?"
    );

    mysqli_stmt_bind_param($stmt, "s", $username);
    mysqli_stmt_execute($stmt);

    $result = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($result)) {

        if (password_verify($password, $row["password"])) {

            $_SESSION["user"] = $row["username"];
            $_SESSION["razina"] = $row["razina"];

            if ($row["razina"] == 'admin') {
                    header("Location: administrator.php");
                    exit();
            } else {
                    header("Location: index.php");
                    exit();
            }
        } else {
            echo "<p class='warning'> Kriva lozinka </p>";
        }}
}

?>

    
</body>
</html>