<?php
function sorteer_getallen($getallenLijst) {
    $aantalGetallen = count($getallenLijst);
    
    for ($i = 0; $i < $aantalGetallen - 1; $i++) {
        for ($j = 0; $j < $aantalGetallen - $i - 1; $j++) {
            if ($getallenLijst[$j] > $getallenLijst[$j + 1]) {
                // Wissel de posities van de getallen
                $tijdelijk = $getallenLijst[$j];
                $getallenLijst[$j] = $getallenLijst[$j + 1];
                $getallenLijst[$j + 1] = $tijdelijk;
            }
        }
    }
    
    return $getallenLijst;
}
$getallenLijst = [3, 1, 4, 2];
$resultaat = sorteer_getallen($getallenLijst);
echo implode(', ', $resultaat); // Output: '1, 2, 3, 4'
