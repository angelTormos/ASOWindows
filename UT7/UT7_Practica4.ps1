Import-Csv "C:\Users\Administrador\Downloads\archivos\empleados.csv" -delimiter ";" | ForEach-Object {
    $nombre = "$($_.nombre).$($_.apellido)"
    if ($_.departamento -eq "PERSONAL"){
        Set-ADUser -Identity $nombre -ProfilePath \\WIN-7B6PU35SQJI\Empresa_users$\$nombre\
    }
}