$pass = "contraseña"
$intro = ""
while ($intro -ne $pass){
    $intro = Read-Host "Introduce constraseña"
}

Write-Host "CONTRASEÑA CORRECTA!"