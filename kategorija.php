<?php

include 'connect.php';
define('UPLPATH', 'img/');
$kategorija = $_GET['kategorija'];

$query = "SELECT *
FROM vijesti
WHERE kategorija='$kategorija'
AND arhiva=0
ORDER BY datum DESC";

$result = mysqli_query($conn, $query);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>BBC</title>
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
    
    <section>
        <h1 class="sport-title"><?php echo $kategorija; ?></h1>

        <div class="cards">

            <?php while($row = mysqli_fetch_assoc($result)) { ?>

            <div class="card">

                <a href="clanak.php?id=<?php echo $row['id']; ?>">
                    <img src="<?php echo UPLPATH.$row['slika']; ?>">
                </a>

                <h3>
                    <?php echo $row['naslov']; ?>
                </h3>

                <p>
                    <?php echo $row['sazetak']; ?>
                </p>

            </div>
            <?php } ?>
        </div>
    </section>
</main>

    <footer>
        Josip Brkić, jbrkic@tvz.hr, 2026
    </footer>
</body>
</html>