while(1){

     #Auswahl der Rechenoperation
    do {
        Write-Host "Wählen Sie eine der Vier untenstehenden Rechenoperationen aus:" -ForegroundColor Yellow
        Write-Host "1: Zahl1 + Zahl2 = Ergebnis"
        Write-Host "2: Zahl1 - Zahl2 = Ergebnis"
        Write-Host "3: Zahl1 * Zahl2 = Ergebnis"
        Write-Host "4: Zahl1 / Zahl2 = Ergebnis"
        [int]$EingabeRechenOperation = Read-Host "Wählen Sie die Operation aus, mit der das Skript arbeiten soll"
    } while (($EingabeRechenOperation -gt 4) -or ($EingabeRechenOperation -lt 1))

    #Eingabe der Zahlen
    Write-Host "Geben Sie die zwei Zahlen ein, mit denen Sie rechnen wollen" -ForegroundColor Yellow
    $Zahl1 = Read-Host "Bitte geben Sie die erste Zahl ein"
    $Zahl2 = Read-Host "Bitte geben Sie die zweite Zahl ein"
    $Zahl1 = $Zahl1.Replace(",",".")
    $Zahl2 = $Zahl2.Replace(",",".")
    $Zahl1 = [double] $Zahl1
    $Zahl2 = [double] $Zahl2

    #Die Vier verschiedenen Rechenoperationen
    switch ($EingabeRechenOperation) {
        1 {$ErgebnisRechnung = $Zahl1 + $Zahl2}
        2 {$ErgebnisRechnung = $Zahl1 - $Zahl2}
        3 {$ErgebnisRechnung = $Zahl1 * $Zahl2}
        4 {$ErgebnisRechnung = $Zahl1 / $Zahl2}
    }

    #Keine Division durch 0
    if(($Zahl2 -eq 0) -and ($EingabeRechenOperation -eq 4)){
    $AntwortDesProgrammes = "Eine Division kann nicht mit Null gemacht werden";
    "$AntwortDesProgrammes= Ungültige Eingabe"; break
    }

    #Falls Eingabe und Zahlen stimmen, werden die Rechnungen nach Plan angestellt
    else{
    if($EingabeRechenOperation -eq 1){
    $AntwortDesProgrammes = "$Zahl1 + $Zahl2 = $ErgebnisRechnung";
    "$AntwortDesProgrammes"
    }

    if($EingabeRechenOperation -eq 2){
    $AntwortDesProgrammes = "$Zahl1 - $Zahl2 = $ErgebnisRechnung";
    "$AntwortDesProgrammes";
    }

    if($EingabeRechenOperation -eq 3){
    $AntwortDesProgrammes = "$Zahl1 * $Zahl2 = $ErgebnisRechnung";
    "$AntwortDesProgrammes";
    }

    if($EingabeRechenOperation -eq 4){
    $AntwortDesProgrammes = "$Zahl1 / $Zahl2 = $ErgebnisRechnung";
    "$AntwortDesProgrammes";
    }}

    #Eingabe Fünf für wiederholen, Eingabe für Sechs für beenden
    Write-Host "Geben Sie die Zahl 5 ein um das Programm zu beenden:" -ForegroundColor Yellow
    $WiederholenOderBeenden = Read-Host "Bitte geben Sie die eine Zahl ein"

    if($WiederholenOderBeenden -eq 5){
        Write-Host "Programm wird beendet"
        break;
    }else {
        Write-Host "Ungültige Eingabe"
    }
}