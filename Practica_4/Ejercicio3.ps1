[int]$num = Read-Host "Introduce un numero entero"

for ($a = $num; $a -ge 0; $a--){
    if ($a -ne 0){
        Write-Host -NoNewline "$a, "
    }else{
        Write-Host $a
    }
}