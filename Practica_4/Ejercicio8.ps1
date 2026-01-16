[int]$num = Read-Host "Introduce un numero"

for ($i = 0; $i -le $num; $i++){
    for ($j = 1; $j -le $i; $j++){
        if ($i % 2 -ne 0){
            if ($j % 2 -ne 0){
                Write-Host -NoNewline "$j"
            }
        }
    }
    Write-Host ""
}