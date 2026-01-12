$pass = "Taller2014"
$cont = Read-Host "Introduce tu contraseña"

if ($pass -eq $cont){
    Write-Host "Contraseña correcta!!"
}else {
    Write-Host "La contraseña que has introducido es incorrecta"
}