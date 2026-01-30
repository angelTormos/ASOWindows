[int]$num = Read-Host "Introduce un numero"

for ($a = 0; $a -lt 10; $a++){
    $res = $num * $a
    Write-Host "$num * $a = $res"
}