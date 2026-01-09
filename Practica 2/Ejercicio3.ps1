[int] $horas = Read-Host "Introduce el numero de horas trabajadas"
[int] $precio = Read-Host "Introduce el precio por hora"

$salario = $horas * $precio

Write-Host "Tu salario es de $salario €"