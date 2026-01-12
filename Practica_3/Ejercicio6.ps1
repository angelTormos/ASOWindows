$dir = Read-Host "Introduce un directorio"

if (Test-Path $dir){
    Get-ChildItem -Path $dir -Recurse
}else {"$dir no es un directorio o no existe"
}