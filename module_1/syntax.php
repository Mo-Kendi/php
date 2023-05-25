<?php
function langste_woord($woordenLijst) {
    $langsteWoord = '';
    
    foreach ($woordenLijst as $woord) {
        if (strlen($woord) > strlen($langsteWoord)) {
            $langsteWoord = $woord;
        }
    }
    
    return $langsteWoord;
}

$woordenLijst = ['kat', 'hond', 'olifant'];
$resultaat = langste_woord($woordenLijst);
echo $resultaat; // Output: 'olifant'
