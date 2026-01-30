[float] $score = Read-Host "Introduce la puntuación"
$dinero = 2400 * $score
if ($score -eq 0.0){
    Write-Host "Inaceptable"
    Write-Host "$dinero €"
}elseif ($score -eq 0.4){
    Write-Host "Aceptable"
    Write-Host "$dinero €"
}elseif ($score -ge 0.6){
    Write-Host "Meritorio"
    Write-Host "$dinero €"
}