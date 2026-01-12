[int] $edad = Read-Host "Introduce tu edad"

if ($edad -lt 4){
    Write-Host "La entrada es gratis"
}elseif ($edad -ge 4 -and $edad -lt 18){
    Write-Host "La entrada cuesta 5€"
}else{
    Write-Host "La entrada cuesta 10€"
}