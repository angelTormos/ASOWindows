Function Sumar($a, $b) {
    return $a + $b
}

Function Restar($a, $b) {
    return $a - $b
}

Function Multiplicar($a, $b) {
    return $a * $b
}

Function Dividir($a, $b) {
    if ($b -eq 0) {
        Write-Host "Error: No se puede dividir entre cero"
        return $null
    }
    return $a / $b
}

Function Calculadora() {
    Write-Host "****** CALCULADORA ********"
    Write-Host "1. Sumar"
    Write-Host "2. Restar"
    Write-Host "3. Multiplicar"
    Write-Host "4. Dividir"
    Write-Host "5. Salir"

    $opcion = Read-Host "Selecciona una opcion"

    if ($opcion -eq 5) {
        Write-Host "Saliendo"
        return
    }

    $num1 = [int](Read-Host "Introduce el primer número")
    $num2 = [int](Read-Host "Introduce el segundo número")

    switch ($opcion) {
        1 {
            $res = Sumar $num1 $num2
            Write-Host "El resultado de la suma entre $num1 y $num2 es $res"
        }
        2 {
            $res = Restar $num1 $num2
            Write-Host "El resultado de la resta entre $num1 y $num2 es $res"
        }
        3 {
            $res = Multiplicar $num1 $num2
            Write-Host "El resultado de la multiplicación entre $num1 y $num2 es $res"
        }
        4 {
            $res = Dividir $num1 $num2
            if ($res -ne $null) {
                Write-Host "El resultado de la división entre $num1 y $num2 es $res"
            }
        }
        Default {
            Write-Host "Opción inválida"
        }
    }
}

Calculadora