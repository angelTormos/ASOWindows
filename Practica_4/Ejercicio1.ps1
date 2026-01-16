$nombre = Read-Host "Dime tu nombre"
[int]$numero = Read-Host "Dame un numero entero"

for ($a = 0; $a -lt $numero; $a++){
    Write-Host $nombre
}