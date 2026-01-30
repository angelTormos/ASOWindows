# Creación de la UO Raiz.
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=empresa,DC=local" -ErrorAction SilentlyContinue -ProtectedFromAccidentalDeletion $false
# Importación del CSV con delimitador ;
Import-Csv -Path "C:\Users\Administrador\Downloads\archivos\departamentos.csv" -Delimiter ";" | ForEach-Object {
    #Creación de las UO.
    New-ADOrganizationalUnit -name $_.departamento -Path "OU=Empresa,DC=empresa,DC=local" -Description $_.descripcion -ErrorAction SilentlyContinue -ProtectedFromAccidentalDeletion $false
    #Creación de los grupos con las variables del CSV.
    New-ADGroup -name $_.departamento -SamAccountName $_.departamento -GroupScope Global -GroupCategory Security -Path "OU=$($_.departamento),OU=Empresa,DC=empresa,DC=local" -ErrorAction SilentlyContinue
}
# Importación del CSV con el delimitador ;
Import-Csv -Path "C:\Users\Administrador\Downloads\archivos\empleados.csv" -Delimiter ";" | ForEach-Object {
    #Creacion de los usuarios y asignación de contraseñas, las contraseñas tienes que cumplir los requisitos del sistema.
    New-ADUser -Name "$($_.nombre) $($_.apellido)" -GivenName $_.nombre -Surname $_.apellido -SamAccountName "$($_.nombre).$($_.apellido)" -Path "OU=$($_.departamento),OU=Empresa,DC=empresa,DC=local" -Department $_.departamento -Enabled $true -AccountPassword (ConvertTo-SecureString "asO.2025" -AsPlainText -Force)
    #Añadir usuarios a los grupos.
    Add-ADGroupMember -Identity $_.departamento -Members "$($_.nombre).$($_.apellido)"
}
Write-Host "Se han creado todos los objetos"
