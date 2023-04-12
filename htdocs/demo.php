<!DOCTYPE html>
<html lang="nl">
<head>
    <title>demo</title>
</head>
<body>
    <?php
if (isset($_GET['nr'])) {
    if(is_numeric($_GET['nr'])) {
        $getal = $_GET['nr'];
        for ($i = 1; $i <= 10; $i++) {
            echo "$i x $getal = " . ($i * $getal) . "<br/>";
        }
    } else {
        echo "Geen getal gegeven";
    }
} 
    ?>
    <form method="get">
        Getal: <input name="nr"><br/>
        <input type="submit">
    </form>
</body>
</html>