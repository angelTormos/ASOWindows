[int]$num = Read-Host "Introduce un numero entero"

for ($a = 1; $a -le $num; $a++){
    if ($a % 2 -ne 0){
        if ($a -ne $num){
            Write-Host -NoNewline "$a, "
        }else{
            Write-Host $a
        }
    }
}