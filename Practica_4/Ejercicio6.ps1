[int]$num = 33
[int]$adivina = 0
while ($adivina -ne 33){
    $adivina = Read-Host "Introduce un numero"
    if ($adivina -eq 33){
        Write-Host "NUMERO CORRECTO"
    }else{
        if ($adivina -gt $num){
            Write-Host "Numero incorrecto, el numero es mas pequeño"
        }else{
            Write-Host "Numero incorrecto, el numero es mas grande"
        }
    }
}