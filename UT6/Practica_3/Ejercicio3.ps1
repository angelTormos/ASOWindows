[int] $num1 = Read-Host "Introduce el primer numero"
[int] $num2 = Read-Host "Introduce el segundo numero"

if ($num1 -lt $num2){
    Write-Host "$num2 es mayor que $num1"
} elseif ($num1 -eq $num2){
    Write-Host "$num1 y $num2 son iguales"
} elseif ($num1 -gt $num2){
    Write-Host "$num1 es mayor que $num2"
}