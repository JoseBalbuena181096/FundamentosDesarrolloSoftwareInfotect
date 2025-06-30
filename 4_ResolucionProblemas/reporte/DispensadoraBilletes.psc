Algoritmo DispensadoraBilletes
    // Declaracion de estructuras de datos
    Dimension denominaciones[6]
    Dimension inventario[6]
    Dimension cantidad[6]
    Definir denominaciones Como Entero
    Definir inventario Como Entero
    Definir cantidad Como Entero
    Definir monto, montoOriginal Como Entero
    Definir i, totalBilletes Como Entero
    Definir operacionExitosa Como Logico
    Definir montoRestante Como Entero
    
    // Inicializacion de denominaciones disponibles (ordenadas de mayor a menor)
    denominaciones[1] <- 1000
    denominaciones[2] <- 500
    denominaciones[3] <- 200
    denominaciones[4] <- 100
    denominaciones[5] <- 50
    denominaciones[6] <- 20
    
    // Inicializacion del inventario con 10 billetes de cada denominacion
    Para i <- 1 Hasta 6 Hacer
        inventario[i] <- 10
    FinPara
    
    Escribir "=== DISPENSADORA DE BILLETES ==="
    Escribir "Denominaciones disponibles: $1000, $500, $200, $100, $50, $20"
    Escribir ""
    
    // Mostrar estado actual del inventario
    Escribir "=== INVENTARIO ACTUAL ==="
    Para i <- 1 Hasta 6 Hacer
        Escribir "Billetes de $", denominaciones[i], ": ", inventario[i], " disponibles"
    FinPara
    Escribir ""
    
    // Validacion de entrada del monto
    Escribir "Ingrese el monto a dispensar:"
    Leer monto
    montoOriginal <- monto
    
    // Validacion de que el monto sea valido
    Mientras monto <= 0 O monto > 50000 Hacer
        Escribir "Error: Monto invalido (debe ser mayor a 0 y menor a $50,000)"
        Escribir "Ingrese el monto a dispensar:"
        Leer monto
        montoOriginal <- monto
    FinMientras
    
    // Inicializacion de variables para el dispensado
    totalBilletes <- 0
    operacionExitosa <- Verdadero
    montoRestante <- monto
    
    // Crear copia del inventario para simulacion
    Dimension inventarioTemp[6]
    Para i <- 1 Hasta 6 Hacer
        inventarioTemp[i] <- inventario[i]
    FinPara
    
    // Algoritmo greedy para entregar la menor cantidad de billetes
    // Se recorre de mayor a menor denominacion para optimizar
    Para i <- 1 Hasta 6 Hacer
        // Calcular cuantos billetes de esta denominacion se necesitan
        cantidad[i] <- trunc(montoRestante / denominaciones[i])
        
        // Verificar si hay suficientes billetes en inventario
        Si cantidad[i] > inventarioTemp[i] Entonces
            // Si no hay suficientes, usar todos los disponibles
            cantidad[i] <- inventarioTemp[i]
        FinSi
        
        // Actualizar monto restante y total de billetes
        montoRestante <- montoRestante - (cantidad[i] * denominaciones[i])
        totalBilletes <- totalBilletes + cantidad[i]
        inventarioTemp[i] <- inventarioTemp[i] - cantidad[i]
    FinPara
    
    // Verificar si se pudo dispensar el monto completo
    Si montoRestante > 0 Entonces
        Escribir "Error: No se puede dispensar el monto exacto de $", montoOriginal
        Escribir "Monto no dispensable: $", montoRestante
        Escribir "El inventario actual no permite esta combinacion de billetes"
        Escribir "Operacion cancelada - No se dispensaron billetes"
        operacionExitosa <- Falso
    SiNo
        // Actualizar inventario real y mostrar resultados
        Escribir "=== RESULTADO DEL DISPENSADO ==="
        Escribir "Monto solicitado: $", montoOriginal
        Escribir ""
        
        // Mostrar billetes dispensados y actualizar inventario real
        Para i <- 1 Hasta 6 Hacer
            Si cantidad[i] > 0 Entonces
                Escribir "Billetes de $", denominaciones[i], ": ", cantidad[i], " (Total: $", denominaciones[i] * cantidad[i], ")"
                // Actualizar inventario real
                inventario[i] <- inventario[i] - cantidad[i]
            FinSi
        FinPara
        
        Escribir ""
        Escribir "Total de billetes dispensados: ", totalBilletes
        Escribir "Operacion completada exitosamente"
        Escribir ""
        
        // Mostrar inventario actualizado
        Escribir "=== INVENTARIO ACTUALIZADO ==="
        Para i <- 1 Hasta 6 Hacer
            Escribir "Billetes de $", denominaciones[i], ": ", inventario[i], " disponibles"
        FinPara
        
        // Resumen de eficiencia
        Escribir ""
        Escribir "Eficiencia: Se utilizaron ", totalBilletes, " billetes para dispensar $", montoOriginal
    FinSi
FinAlgoritmo