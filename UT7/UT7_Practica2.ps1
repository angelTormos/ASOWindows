New-Item -ItemType Directory -Path "C:\" -Name "Empresa"

$empresa = "C:\Empresa"
$ACL = Get-Acl -Path $empresa
$ACL.SetAccessRuleProtection($true, $false)

#Permisos Full Control para admins
$permisoadd = @('Administradores', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd
$ACL.AddAccessRule($ace)

#Permisos lectura para usuarios del dominio
$permisouser = @('Usuarios del dominio', 'Read', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$ace_user = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisouser
$ACL.AddAccessRule($ace_user)

$acl | Set-Acl -Path $empresa

#Creación carpetas departamentos y permisos
Import-Csv "C:\Users\Administrador\Downloads\archivos\departamentos.csv" -delimiter ";" | ForEach-Object {
    New-Item -ItemType Directory -Path "C:\Empresa" -Name $_.departamento
    $departamento = "C:\Empresa\$($_.departamento)"
    $ACL_dept = Get-Acl -Path $departamento
    $permisodept = @("$($_.departamento)", 'Modify', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
    $ace_dept = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisodept
    $ACL_dept.AddAccessRule($ace_dept)
    $ACL_dept | Set-Acl -Path $departamento
}

New-SmbShare -Path C:\Empresa -Name Empresa -FullAccess Administradores -ReadAccess 'Usuarios del dominio'