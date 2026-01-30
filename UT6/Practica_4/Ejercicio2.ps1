[int]$edad = Read-Host "Introduce tu edad"

for ($a = 1; $a -le $edad; $a++){
    Write-Host $a
}