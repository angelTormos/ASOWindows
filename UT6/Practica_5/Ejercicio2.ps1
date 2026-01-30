$usuarios = Import-Csv -Path ".\usuarios.csv" -Delimiter ","

foreach ($usuario in $usuarios) {
    Write-Host "Nombre: $($usuario.nombre) Apellidos: $($usuario.apellidos) Grupo: $($usuario.grupo)"
}