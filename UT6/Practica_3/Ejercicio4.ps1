[int] $num1 = Read-Host "Introduce el primer numero"
[int] $num2 = Read-Host "Introduce el segundo numero"
Write-Host "****** CALCULADORA ********
1.Sumar
2.Restar
3.Multiplicar
4.Dividir"
[int] $op = Read-Host "Introduce la operación a realizar "

switch ($op){
    1 {
        $res = $num1 + $num2
        Write-Host "El resultado es $res"
    }
    2 {
        $res = $num1 - $num2
        Write-Host "El resultado es $res"
    }
    3{
        $res = $num1 * $num2
        Write-Host "El resultado es $res"
    }
    4{
        $res = $num1 / $num2
        Write-Host "El resultado es $res"
    }
}