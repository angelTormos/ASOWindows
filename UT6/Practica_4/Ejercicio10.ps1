do{

    Write-Host "
    a) Crear una carpeta

    b) Crear un fichero nuevo

    c) Cambiar el nombre de un fichero o carpeta

    d) Borrar un archivo o carpeta
    
    e) Verificar si existe un fichero o carpeta

    f) Mostrar el contenido de un directorio.

    g) Mostar la fecha y hora actuales

    x) Salir"

    $opcion = Read-Host "Introduce una opcion: "

    switch ($opcion){
        "a"{
            $nombre_carpeta = Read-Host "Introduce el nombre de la carpeta"
            New-Item $nombre_carpeta -ItemType directory
        }
        "b"{
            $nombre_fichero = Read-Host "Introduce el nombre del fichero"
            New-Item $nombre_fichero -ItemType file
        }
        "c"{
            $nombre_antiguo = Read-Host "Introduce el nombre anitguo"
            $nombre_nuevo = Read-Host "Introduce el nombre nuevo"
            Rename-Item $nombre_antiguo $nombre_nuevo
        }
        "d"{
            $nombre_borrar = Read-Host "Introduce el nombre del archivo/carpeta a borrar"
            Remove-Item $nombre_borrar
        }
        "e"{
            $nombre_encontrar = Read-Host "Introduce el nombre del archivo/carpeta a encontrar"
            if ((Test-Path $nombre_encontrar) -eq $True){
                Write-Host "$nombre_encontrar existe"
            }else {
                Write-Host "$nombre_encontrar no existe"
            }
        }
        "f"{
            $nombre_lista = Read-Host "Introduce la ruta del directorio a listar"
            Get-ChildItem -Path $nombre_lista
        }
        "g"{
            Get-Date -DisplayHint Date
            Get-Date -DisplayHint Time
        }
    }
}while ($opcion -ne "x")