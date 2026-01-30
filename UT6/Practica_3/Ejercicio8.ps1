$nombre = Read-Host "Introduce tu nombre"
$sexo = Read-Host "Introduce tu sexo (H o M)"

if (($nombre -lt "M" -and $sexo -eq "M") -or ($nombre -gt "N" -and $sexo -eq "H")){
    Write-Host "Grupo A"
}else{
    Write-Host "Grupo B"
}