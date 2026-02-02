New-Item -ItemType Directory -Path "C:\" -Name "Empresa_users"

$empresa = "C:\Empresa_users"
$ACL_emp = Get-Acl -Path $empresa
$ACL_emp.SetAccessRuleProtection($true, $false)

#Permisos Full Control para admins
$permisoadd = @('Administradores', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$ace_emp= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd
$ACL_emp.AddAccessRule($ace_emp)

$ACL_emp | Set-Acl -Path $empresa

Import-Csv -Path "C:\Users\Administrador\Downloads\archivos\empleados.csv" -Delimiter ";" | ForEach-Object {
    New-Item -ItemType Directory -Path "C:\Empresa_users" -Name "$($_.nombre).$($_.apellido)"
    $carpeta = "C:\Empresa_users\$($_.nombre).$($_.apellido)"
    $ACL = Get-Acl -Path $carpeta
    $permiso = @("$($_.nombre).$($_.apellido)", 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
    $ACL.AddAccessRule($ace)
    $ACL | Set-Acl -Path $carpeta
}

New-SmbShare -Path C:\Empresa_users -Name Empresa_users$ -FullAccess Administradores -Read 'Usuarios del dominio'

Import-Csv -Path "C:\Users\Administrador\Downloads\archivos\empleados.csv" -Delimiter ";" | ForEach-Object {
    Set-ADUser -Identity "$($_.nombre).$($_.apellido)" -ScriptPath "carpetas.bat" -HomeDrive "Z:" -HomeDirectory "\\empresa.local\Empresa_users$\$($_.nombre).$($_.apellido)"
}