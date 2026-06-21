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

    <div class="welcome">
        <h2>Welcome to BBC.com</h2>
        <span><?php echo date("l").", ".date("d.m");?></span>
    </div>

    <?php

        $newsQuery = "SELECT * FROM vijesti
        WHERE kategorija='News'
        AND arhiva=0
        ORDER BY datum DESC
        LIMIT 3";

        $newsResult = mysqli_query($conn, $newsQuery);

    ?>

    <section>
    <h2 class="news-title">News</h2>

    <div class="cards">

        <?php while($row = mysqli_fetch_assoc($newsResult)) { ?>

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

    <?php

        $sportQuery = "SELECT * FROM vijesti
        WHERE kategorija='Sport'
        AND arhiva=0
        ORDER BY datum DESC
        LIMIT 3";

        $sportResult = mysqli_query($conn, $sportQuery);

    ?>

    <section>
        <h2 class="sport-title">Sport</h2>

        <div class="cards">

            <?php while($row = mysqli_fetch_assoc($sportResult)) { ?>

                <div class="card">

                    <a href="clanak.php?id=<?php echo $row['id']; ?>"><img src="<?php echo UPLPATH.$row['slika']; ?>"></a>

                    <h3><?php echo $row['naslov']; ?></h3>

                    <p><?php echo $row['sazetak']; ?></p>

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