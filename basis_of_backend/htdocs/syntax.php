<?php
function lijst_optellen($numbers) {

$sum = 0;

foreach ($numbers as $number) {
    if ($number % 2 == 0) {
        $sum += $number;
    }
// % dit geeft de rest aan als $getal gedeelt door 2 is

    $sum += $number;

}

return $sum;

}



$getallenLijst = [1, 2, 3, 4];

$result = lijst_optellen($getallenLijst);

echo $result; // Output: 10