Write-Host "¿Quieres una pizza vegetariana?"
Write-Host "1. Sí"
Write-Host "2. No"

$opcion = Read-Host "Elige una opción"
$ingredientes = @("Mozzarella", "Tomate")

if ($opcion -eq "1") {
    Write-Host "Has elegido pizza vegetariana"
    Write-Host "Ingredientes:"
    Write-Host "1.Pimiento"
    Write-Host "2.Tofu"

    $ingredientelegido = Read-Host "Elige un ingrediente"

    if ($ingredientelegido -eq "1") {
        $ingredientes += "Pimiento"
    }elseif ($ingredienteElegido -eq "2") {
        $ingredientes += "Tofu"
    }else {
        Write-Host "Opción no válida"
        exit
    }

$tipo = "Vegetariana"

}elseif ($opcion -eq "2") {
    Write-Host "Has elegido pizza no vegetariana"
    Write-Host "Ingredientes disponibles:"
    Write-Host "1.Peperoni"
    Write-Host "2.Jamón"
    Write-Host "3.Salmón"

    $ingredientelegido = Read-Host "Elige un ingrediente"

    if ($ingredientelegido -eq "1") {
        $ingredientes += "Peperoni"
    }elseif ($ingredientelegido -eq "2") {
        $ingredientes += "Jamón"
    }elseif ($ingredientelegido -eq "3") {
        $ingredientes += "Salmón"
    }else {
        Write-Host "Opción no válida"
        exit
    }

$tipo = "No vegetariana"

}else {
    Write-Host "Opción no válida"
    exit
}

Write-Host "Tu pizza es: $tipo"
Write-Host "Ingredientes: $ingredientes"