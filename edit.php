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
    <title>Administracija</title>
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
if(isset($_GET['edit'])) {

    $id = $_GET['edit'];

    $result = mysqli_query(
        $conn,
        "SELECT * FROM vijesti WHERE id=$id"
    );

    $row = mysqli_fetch_assoc($result);
?>

<div class="article">
<form method="POST" action="administrator.php">

    <input type="hidden" name="id"value="<?php echo $row['id']; ?>">

    <label>Naslov</label>

    <input type="text" name="naslov" value="<?php echo $row['naslov']; ?>">

    <label>Sažetak</label>

    <textarea rows="3"name="sazetak"><?php echo $row['sazetak']; ?></textarea>

    <label>Tekst</label>

    <textarea rows="10" name="tekst"><?php echo $row['tekst'];?></textarea>

    <label>Slika</label>

    <input type="text" name="slika" value="<?php echo $row['slika']; ?>">

    <label>Kategorija</label>

    <select name="kategorija">

        <option value="News" <?php if($row['kategorija']=="News") echo "selected"; ?>> News </option>

        <option value="Sport" <?php if($row['kategorija']=="Sport") echo "selected"; ?>> Sport </option>

    </select>

    <br><br>

    Arhiva:
    <input type="checkbox" name="arhiva" value="1" <?php if($row['arhiva']==1) echo "checked"; ?>>

    <br><br>

    <input type="submit" name="update" value="Spremi promjene">

</form>
</div>
<?php } ?>


<footer>
Josip Brkić, jbrkic@tvz.hr, 2026
</footer>

</body>
</html>