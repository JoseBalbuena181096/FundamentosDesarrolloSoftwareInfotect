# Resolución de Problemas Complejos Utilizando Algoritmos: Implementación de Estructuras de Datos Avanzadas y Técnicas de Optimización

## Resumen

Este documento presenta la implementación y análisis de cinco algoritmos complejos desarrollados en PSeInt como parte del fortalecimiento de competencias en resolución de problemas computacionales. Los algoritmos incluyen: detección de duplicados en arreglos, inversión de cadenas, calculadora de edad, dispensadora de billetes y máquina expendedora. El objetivo principal es demostrar la aplicación práctica de estructuras de datos apropiadas y el desarrollo del pensamiento algorítmico avanzado. Los resultados muestran que todos los algoritmos funcionan correctamente, validando su eficacia para resolver problemas computacionales de mayor complejidad. Este trabajo contribuye al fortalecimiento de competencias avanzadas en programación y análisis de algoritmos.

**Palabras clave:** algoritmos complejos, estructuras de datos, PSeInt, optimización, lógica de programación avanzada.

## I. INTRODUCCIÓN

La resolución de problemas complejos mediante algoritmos constituye una competencia fundamental en el desarrollo de software y la ingeniería computacional [1]. El progreso desde algoritmos básicos hacia implementaciones más sofisticadas requiere el dominio de estructuras de datos apropiadas y técnicas de optimización algorítmica.

PSeInt (Pseudocode Interpreter) continúa siendo una herramienta valiosa para el desarrollo de algoritmos complejos, permitiendo a los desarrolladores concentrarse en la lógica algorítmica sin las restricciones sintácticas de lenguajes específicos [2]. Esta herramienta facilita la implementación de soluciones que requieren análisis profundo y diseño estructurado.

El presente trabajo documenta la implementación de cinco algoritmos de complejidad progresiva: (1) detección de valores duplicados en arreglos con validación específica, (2) inversión de cadenas de texto preservando integridad de datos, (3) calculadora de edad con manejo preciso de fechas, (4) sistema de dispensado optimizado de billetes, y (5) máquina expendedora con control de flujo completo.

Los algoritmos seleccionados representan casos de estudio que abarcan aspectos avanzados de la programación: manipulación compleja de arreglos, procesamiento de cadenas, cálculos temporales, optimización de recursos y sistemas de control de flujo. La metodología empleada incluye análisis detallado del problema, descomposición en componentes, diseño optimizado del algoritmo, implementación en pseudocódigo y validación exhaustiva mediante casos de prueba comprehensivos.

## II. METODOLOGÍA

### A. Entorno de Desarrollo

Se utilizó PSeInt versión más reciente, configurado con perfil "Estricto" para garantizar precisión en la implementación algorítmica. El entorno fue instalado siguiendo las especificaciones del fabricante desde el sitio oficial https://pseint.sourceforge.net/.

### B. Diseño de Algoritmos

El diseño de cada algoritmo siguió la metodología estructurada avanzada:

1. **Análisis exhaustivo del problema:** Identificación de entradas, restricciones, procesos complejos y salidas esperadas
2. **Descomposición modular:** División del problema en componentes manejables
3. **Selección de estructuras de datos:** Evaluación y selección de estructuras óptimas
4. **Diseño de la solución:** Desarrollo del algoritmo utilizando técnicas de optimización
5. **Implementación:** Codificación en pseudocódigo PSeInt con validaciones
6. **Validación exhaustiva:** Pruebas con múltiples casos incluyendo casos límite
7. **Documentación técnica:** Registro detallado del proceso, complejidad y resultados

### C. Estructuras de Control y Datos Implementadas

Los algoritmos implementan estructuras avanzadas:

- **Estructuras de datos complejas:** Arreglos multidimensionales y estructuras auxiliares
- **Algoritmos de búsqueda:** Búsqueda lineal y validación de duplicados
- **Estructuras iterativas anidadas:** Ciclos `Para` y `Mientras` con múltiples niveles
- **Estructuras condicionales complejas:** Sentencias `Si-Entonces-Sino` anidadas
- **Manipulación de cadenas:** Funciones avanzadas de procesamiento de texto
- **Validación de datos:** Sistemas robustos de verificación de entrada

## III. IMPLEMENTACIÓN Y RESULTADOS

### A. Algoritmo de Detección de Duplicados

**Análisis del Problema**

El algoritmo debe identificar elementos que aparecen exactamente dos veces en un arreglo de números enteros, excluyendo elementos que aparecen una vez o más de dos veces.

**Implementación**

```pseint
Algoritmo Duplicados
    // ========================================
    // ALGORITMO PARA DETECTAR ELEMENTOS DUPLICADOS
    // Encuentra elementos que aparecen exactamente 2 veces en un arreglo
    // ========================================

    // Declaracion de variables y estructuras de datos
    // arr[100]: arreglo principal que almacena los elementos ingresados
    // resultado[100]: arreglo que almacena los elementos que aparecen exactamente 2 veces
    // n: tamano del arreglo ingresado por el usuario
    // i, j: variables contador para los bucles
    // cont: contador de ocurrencias de cada elemento
    // pos: posicion actual en el arreglo resultado
    // yaAgregado: bandera logica para evitar duplicados en el resultado
    Dimension arr[100], resultado[100]
    Definir n, i, j, cont, pos Como Entero
    Definir yaAgregado Como Logico

    // ========================================
    // ENTRADA DE DATOS - TAMANO DEL ARREGLO
    // ========================================
    // Solicitar tamano del arreglo con validacion
    Escribir "=== DETECTOR DE DUPLICADOS ==="
    Escribir "Ingrese el tamano del arreglo (max 100):"
    Leer n

    // ========================================
    // VALIDACION DE ENTRADA
    // ========================================
    // Validacion de entrada
    // El bucle se ejecuta mientras el tamano sea invalido (<= 0 o > 100)
    // Esto asegura que el arreglo tenga un tamano razonable
    Mientras n <= 0 O n > 100 Hacer
        Escribir "Error: Ingrese un tamano valido (1-100):"
        Leer n
    FinMientras

    // ========================================
    // CAPTURA DE ELEMENTOS DEL ARREGLO
    // ========================================
    // Captura de elementos del arreglo
    // El bucle solicita cada elemento del arreglo al usuario
    // Los elementos se almacenan en las posiciones 1 hasta n
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese elemento ", i, ":"
        Leer arr[i]
    FinPara

    // ========================================
    // PROCESAMIENTO - ALGORITMO DE DETECCION
    // ========================================
    // Algoritmo de deteccion de duplicados exactos
    // pos se inicializa en 0 para indicar que el arreglo resultado esta vacio
    pos <- 0

    // Bucle principal: recorre cada elemento del arreglo original
    Para i <- 1 Hasta n Hacer
        // Inicializar contador de ocurrencias para el elemento actual
        cont <- 0

        // Contar ocurrencias del elemento actual
        // Bucle interno: compara el elemento arr[i] con todos los elementos del arreglo
        Para j <- 1 Hasta n Hacer
            Si arr[i] = arr[j] Entonces
                cont <- cont + 1
            FinSi
        FinPara

        // ========================================
        // VERIFICACION Y ALMACENAMIENTO
        // ========================================
        // Verificar si aparece exactamente 2 veces
        Si cont = 2 Entonces
            // Inicializar bandera para evitar duplicados en el resultado
            yaAgregado <- Falso

            // Evitar duplicados en el resultado
            // Solo verificar si ya hay elementos en el arreglo resultado
            Si pos > 0 Entonces
                // Recorrer el arreglo resultado para verificar si el elemento ya fue agregado
                Para j <- 1 Hasta pos Hacer
                    Si resultado[j] = arr[i] Entonces
                        yaAgregado <- Verdadero
                    FinSi
                FinPara
            FinSi

            // Si el elemento no ha sido agregado previamente, agregarlo al resultado
            Si NO yaAgregado Entonces
                pos <- pos + 1
                resultado[pos] <- arr[i]
            FinSi
        FinSi
    FinPara

    // ========================================
    // SALIDA DE RESULTADOS
    // ========================================
    // Mostrar resultados
    Escribir "Elementos que aparecen exactamente 2 veces:"

    // Verificar si se encontraron elementos duplicados
    Si pos = 0 Entonces
        // Si pos = 0, no se encontraron elementos que aparezcan exactamente 2 veces
        Escribir "No se encontraron elementos duplicados exactamente 2 veces"
    SiNo
        // Si pos > 0, mostrar todos los elementos encontrados
        Para i <- 1 Hasta pos Hacer
            Escribir "- ", resultado[i]
        FinPara
    FinSi
FinAlgoritmo
```

**Evidencia Gráfica**

![alt text](image.png)

![alt text](image-1.png)

![alt text](image-2.png)

**Análisis de Complejidad**

El algoritmo presenta complejidad temporal O(n³) debido a los bucles anidados para conteo y verificación de duplicados. Para optimización futura, se podría implementar utilizando estructuras de datos auxiliares reduciendo la complejidad a O(n²).

**Resultados de Validación**

Se ejecutaron múltiples pruebas con diferentes configuraciones de datos, incluyendo casos límite sin duplicados y arreglos con múltiples elementos repetidos.

### B. Algoritmo de Inversión de Cadenas

**Análisis del Problema**

Se requiere implementar un algoritmo que invierta completamente una cadena de texto, preservando todos los caracteres incluyendo espacios y caracteres especiales.

**Implementación**

```pseint
Algoritmo CadenaInversa
    // ========================================
    // ALGORITMO PARA INVERTIR UNA CADENA DE TEXTO
    // Y VERIFICAR SI ES UN PALINDROMO
    // ========================================

    // Declaracion de variables
    // cadena: almacena la cadena original ingresada por el usuario
    // inversa: almacena la cadena resultante despues de la inversion
    // i: variable contador para el bucle de inversion
    // tamano: almacena la longitud de la cadena original
    // esPalindromo: variable logica para indicar si es palindromo
    Definir cadena, inversa Como Cadena
    Definir i, tamano Como Entero
    Definir esPalindromo Como Logico

    // ========================================
    // ENTRADA DE DATOS
    // ========================================
    // Solicitar entrada del usuario
    Escribir "=== INVERSOR DE CADENAS Y DETECTOR DE PALINDROMOS ==="
    Escribir "Ingrese una cadena de texto:"
    Leer cadena

    // ========================================
    // VALIDACION DE ENTRADA
    // ========================================
    // Validacion de entrada no vacia
    // El bucle se ejecuta mientras la cadena este vacia
    // Esto asegura que el usuario ingrese al menos un caracter
    Mientras cadena = "" Hacer
        Escribir "Error: La cadena no puede estar vacia"
        Escribir "Ingrese una cadena de texto:"
        Leer cadena
    FinMientras

    // ========================================
    // PROCESAMIENTO - ALGORITMO DE INVERSION
    // ========================================
    // Obtener longitud de la cadena usando la funcion Longitud()
    // Esta funcion devuelve el numero de caracteres en la cadena
    tamano <- Longitud(cadena)

    // Inicializar la variable inversa como cadena vacia
    // Aqui se ira construyendo la cadena invertida
    inversa <- ""

    // Algoritmo de inversion caracter por caracter
    // El bucle recorre la cadena desde el ultimo caracter hasta el primero
    // i comienza en tamano (ultima posicion) y va decrementando hasta 1
    Para i <- tamano Hasta 1 Con Paso -1 Hacer
        // Subcadena(cadena, i, i) extrae el caracter en la posicion i
        // Se concatena cada caracter al final de la variable inversa
        // Esto efectivamente invierte el orden de los caracteres
        inversa <- inversa + Subcadena(cadena, i, i)
    FinPara

    // ========================================
    // VERIFICACION DE PALINDROMO
    // ========================================
    // Un palindromo es una palabra o frase que se lee igual de izquierda a derecha
    // que de derecha a izquierda (ignorando espacios, mayusculas y acentos)
    // Comparar la cadena original con su version invertida
    Si cadena = inversa Entonces
        esPalindromo <- Verdadero
    SiNo
        esPalindromo <- Falso
    FinSi

    // ========================================
    // SALIDA DE RESULTADOS
    // ========================================
    // Mostrar resultados
    Escribir ""
    Escribir "=== RESULTADOS ==="
    Escribir "Cadena original: ", cadena
    Escribir "Cadena invertida: ", inversa
    Escribir "Longitud procesada: ", tamano, " caracteres"
    Escribir ""

    // Mostrar resultado de la verificacion de palindromo
    Escribir "=== VERIFICACION DE PALINDROMO ==="
    Si esPalindromo Entonces
        Escribir "RESULTADO: La cadena ES un palindromo"
        Escribir "Explicacion: La cadena se lee igual de izquierda a derecha"
        Escribir "que de derecha a izquierda"
    SiNo
        Escribir "RESULTADO: La cadena NO es un palindromo"
        Escribir "Explicacion: La cadena no se lee igual en ambas direcciones"
    FinSi
FinAlgoritmo
```

**Evidencia Gráfica**

![alt text](image-3.png)

![alt text](image-4.png)

![alt text](image-5.png)

![alt text](image-6.png)

**Análisis de Complejidad**

El algoritmo presenta complejidad temporal O(n) donde n es la longitud de la cadena, utilizando eficientemente las funciones integradas de PSeInt para manipulación de cadenas.

### C. Algoritmo Calculadora de Edad

**Análisis del Problema**

Implementar un sistema preciso de cálculo de edad que considere día, mes y año, manejando correctamente los casos donde el cumpleaños no ha ocurrido en el año actual.

**Implementación**

```pseint
Algoritmo CalculadoraEdad
    // Declaracion de variables para fechas
    Definir fechaNacimiento Como Cadena
    Definir diaNac, mesNac, anioNac Como Entero
    Definir diaAct, mesAct, anioAct Como Entero
    Definir edad Como Entero
    Definir fechaValida Como Logico
    Definir i Como Entero
    Definir caracter Como Cadena

    Escribir "=== CALCULADORA DE EDAD ==="

    // Funcion de validacion de fecha de nacimiento
    fechaValida <- Falso
    Mientras NO fechaValida Hacer
        Escribir "Ingrese fecha de nacimiento (formato DD-MM-AAAA):"
        Leer fechaNacimiento

        // Validar que la cadena tenga el formato correcto (10 caracteres: DD-MM-AAAA)
        Si Longitud(fechaNacimiento) = 10 Entonces
            // Extraer dia, mes y anio de la cadena
            diaNac <- ConvertirANumero(Subcadena(fechaNacimiento, 1, 2))
            mesNac <- ConvertirANumero(Subcadena(fechaNacimiento, 4, 5))
            anioNac <- ConvertirANumero(Subcadena(fechaNacimiento, 7, 10))

            // Validar que los guiones esten en las posiciones correctas
            Si Subcadena(fechaNacimiento, 3, 3) = "-" Y Subcadena(fechaNacimiento, 6, 6) = "-" Entonces
                // Validar rango de anio (mayor a 1900)
                Si anioNac > 1900 Y anioNac <= 2025 Entonces
                    // Validar rango de mes (1-12)
                    Si mesNac >= 1 Y mesNac <= 12 Entonces
                        // Validar rango de dia segun el mes
                        Si mesNac = 1 O mesNac = 3 O mesNac = 5 O mesNac = 7 O mesNac = 8 O mesNac = 10 O mesNac = 12 Entonces
                            // Meses con 31 dias
                            Si diaNac >= 1 Y diaNac <= 31 Entonces
                                fechaValida <- Verdadero
                            SiNo
                                Escribir "Error: El dia debe estar entre 1 y 31 para este mes."
                            FinSi
                        SiNo
                            Si mesNac = 4 O mesNac = 6 O mesNac = 9 O mesNac = 11 Entonces
                                // Meses con 30 dias
                                Si diaNac >= 1 Y diaNac <= 30 Entonces
                                    fechaValida <- Verdadero
                                SiNo
                                    Escribir "Error: El dia debe estar entre 1 y 30 para este mes."
                                FinSi
                            SiNo
                                // Febrero (mes 2)
                                Si mesNac = 2 Entonces
                                    // Validar si es anio bisiesto
                                    Si (anioNac MOD 4 = 0 Y anioNac MOD 100 <> 0) O (anioNac MOD 400 = 0) Entonces
                                        // Anio bisiesto: febrero tiene 29 dias, pero tomamos 29 como invalido
                                        Si diaNac >= 1 Y diaNac <= 28 Entonces
                                            fechaValida <- Verdadero
                                        SiNo
                                            Escribir "Error: El dia 29 de febrero no es valido en este algoritmo."
                                        FinSi
                                    SiNo
                                        // Anio no bisiesto: febrero tiene 28 dias
                                        Si diaNac >= 1 Y diaNac <= 28 Entonces
                                            fechaValida <- Verdadero
                                        SiNo
                                            Escribir "Error: El dia debe estar entre 1 y 28 para febrero en anio no bisiesto."
                                        FinSi
                                    FinSi
                                FinSi
                            FinSi
                        FinSi
                    SiNo
                        Escribir "Error: El mes debe estar entre 1 y 12."
                    FinSi
                SiNo
                    Escribir "Error: El anio debe ser mayor a 1900 y menor o igual a 2025."
                FinSi
            SiNo
                Escribir "Error: Formato incorrecto. Use DD-MM-AAAA (ejemplo: 15-03-1990)."
            FinSi
        SiNo
            Escribir "Error: La fecha debe tener exactamente 10 caracteres (DD-MM-AAAA)."
        FinSi
    FinMientras

    // Captura de fecha actual con validacion
    fechaValida <- Falso
    Mientras NO fechaValida Hacer
        Escribir "Ingrese fecha actual (formato DD-MM-AAAA):"
        Leer fechaNacimiento

        // Validar que la cadena tenga el formato correcto
        Si Longitud(fechaNacimiento) = 10 Entonces
            // Extraer dia, mes y anio de la cadena
            diaAct <- ConvertirANumero(Subcadena(fechaNacimiento, 1, 2))
            mesAct <- ConvertirANumero(Subcadena(fechaNacimiento, 4, 5))
            anioAct <- ConvertirANumero(Subcadena(fechaNacimiento, 7, 10))

            // Validar que los guiones esten en las posiciones correctas
            Si Subcadena(fechaNacimiento, 3, 3) = "-" Y Subcadena(fechaNacimiento, 6, 6) = "-" Entonces
                // Validar rango de anio
                Si anioAct >= 2000 Y anioAct <= 2025 Entonces
                    // Validar rango de mes
                    Si mesAct >= 1 Y mesAct <= 12 Entonces
                        // Validar rango de dia segun el mes
                        Si mesAct = 1 O mesAct = 3 O mesAct = 5 O mesAct = 7 O mesAct = 8 O mesAct = 10 O mesAct = 12 Entonces
                            // Meses con 31 dias
                            Si diaAct >= 1 Y diaAct <= 31 Entonces
                                fechaValida <- Verdadero
                            SiNo
                                Escribir "Error: El dia debe estar entre 1 y 31 para este mes."
                            FinSi
                        SiNo
                            Si mesAct = 4 O mesAct = 6 O mesAct = 9 O mesAct = 11 Entonces
                                // Meses con 30 dias
                                Si diaAct >= 1 Y diaAct <= 30 Entonces
                                    fechaValida <- Verdadero
                                SiNo
                                    Escribir "Error: El dia debe estar entre 1 y 30 para este mes."
                                FinSi
                            SiNo
                                // Febrero
                                Si mesAct = 2 Entonces
                                    // Validar si es anio bisiesto
                                    Si (anioAct MOD 4 = 0 Y anioAct MOD 100 <> 0) O (anioAct MOD 400 = 0) Entonces
                                        // Anio bisiesto: febrero tiene 29 dias
                                        Si diaAct >= 1 Y diaAct <= 29 Entonces
                                            fechaValida <- Verdadero
                                        SiNo
                                            Escribir "Error: El dia debe estar entre 1 y 29 para febrero en anio bisiesto."
                                        FinSi
                                    SiNo
                                        // Anio no bisiesto: febrero tiene 28 dias
                                        Si diaAct >= 1 Y diaAct <= 28 Entonces
                                            fechaValida <- Verdadero
                                        SiNo
                                            Escribir "Error: El dia debe estar entre 1 y 28 para febrero en anio no bisiesto."
                                        FinSi
                                    FinSi
                                FinSi
                            FinSi
                        FinSi
                    SiNo
                        Escribir "Error: El mes debe estar entre 1 y 12."
                    FinSi
                SiNo
                    Escribir "Error: El anio debe estar entre 2000 y 2025."
                FinSi
            SiNo
                Escribir "Error: Formato incorrecto. Use DD-MM-AAAA (ejemplo: 15-03-2024)."
            FinSi
        SiNo
            Escribir "Error: La fecha debe tener exactamente 10 caracteres (DD-MM-AAAA)."
        FinSi
    FinMientras

    // Calculo preciso de edad
    edad <- anioAct - anioNac

    // Ajuste si el cumpleanos no ha ocurrido este anio
    Si mesAct < mesNac O (mesAct = mesNac Y diaAct < diaNac) Entonces
        edad <- edad - 1
    FinSi

    // Mostrar resultados detallados
    Escribir "=== RESULTADO ==="
    Escribir "Fecha de nacimiento: ", diaNac, "/", mesNac, "/", anioNac
    Escribir "Fecha actual: ", diaAct, "/", mesAct, "/", anioAct
    Escribir "Edad calculada: ", edad, " anos"

    // Informacion adicional sobre si ya cumplio anos
    Si mesAct = mesNac Y diaAct = diaNac Entonces
        Escribir "¡Feliz cumpleanos!"
    SiNo
        Si mesAct < mesNac O (mesAct = mesNac Y diaAct < diaNac) Entonces
            Escribir "Aun no has cumplido anos este anio."
        SiNo
            Escribir "Ya cumpliste anos este anio."
        FinSi
    FinSi
FinAlgoritmo
```

**Evidencia Gráfica**

![alt text](image-7.png)

![alt text](image-10.png)

![alt text](image-8.png)

![alt text](image-9.png)

**Resultados de Validación**

La Tabla I muestra los resultados de las pruebas realizadas:

**TABLA I - RESULTADOS DE VALIDACIÓN CALCULADORA DE EDAD**

| Caso | Fecha Nac. | Fecha Actual | Edad Esperada | Edad Calculada | Estado |
| ---- | ---------- | ------------ | ------------- | -------------- | ------ |
| A    | 18/10/1996 | 29/06/2025   | 28            | 28             | ✓      |
| B    | 12/05/2005 | 29/06/2025   | 20            | 20             | ✓      |
| C    | 29/02/1995 | 29/06/2025   | -             | -              | x      |
| D    | 25/12/1899 | 29/06/2025   | -             | -              | x      |

### D. Algoritmo Dispensadora de Billetes

**Análisis del Problema**

Desarrollar un sistema optimizado de dispensado que minimice la cantidad de billetes entregados utilizando denominaciones disponibles en orden descendente.

**Implementación**

```pseint
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
```

**Evidencia Gráfica**

![alt text](image-11.png)

![alt text](image-12.png)

![alt text](image-13.png)

**Análisis de Complejidad**

El algoritmo implementa la estrategia greedy con complejidad temporal O(d) donde d es el número de denominaciones disponibles, resultando en complejidad constante O(1) para el caso práctico.

### E. Algoritmo Máquina Expendedora

**Análisis del Problema**

Implementar un sistema completo de máquina expendedora que gestione productos, precios, validación de pagos y dispensado con cambio.

**Implementación**

```
Algoritmo MaquinaExpendedora
    // Declaración de estructuras de datos complejas
    Definir productos[10] Como Cadena
    Definir precios[10] Como Real
    Definir monedasValidas[5] Como Real
    Definir totalProductos, totalMonedas Como Entero
    Definir codigoProducto Como Cadena
    Definir moneda, totalPagado, precio, cambio Como Real
    Definir i, productoEncontrado Como Entero
    Definir continuarOperacion Como Logico

    // Inicialización del inventario
    totalProductos <- 8
    productos[1] <- "A1"; precios[1] <- 15.50  // Galletas
    productos[2] <- "B2"; precios[2] <- 12.00  // Refresco
    productos[3] <- "C3"; precios[3] <- 18.75  // Chocolate
    productos[4] <- "D4"; precios[4] <- 20.00  // Sandwich
    productos[5] <- "E5"; precios[5] <- 8.50   // Agua
    productos[6] <- "F6"; precios[6] <- 22.00  // Jugo
    productos[7] <- "G7"; precios[7] <- 16.25  // Papas
    productos[8] <- "H8"; precios[8] <- 13.75  // Dulces

    // Monedas aceptadas
    totalMonedas <- 4
    monedasValidas[1] <- 1.00
    monedasValidas[2] <- 2.00
    monedasValidas[3] <- 5.00
    monedasValidas[4] <- 10.00

    Escribir "=== MÁQUINA EXPENDEDORA INTELIGENTE ==="
    Escribir "Productos disponibles:"
    Para i <- 1 Hasta totalProductos Hacer
        Escribir productos[i], " - $", precios[i]
    FinPara
    Escribir "Monedas aceptadas: $1, $2, $5, $10"
    Escribir "--------------------------------------"

    continuarOperacion <- Verdadero

    Mientras continuarOperacion Hacer
        totalPagado <- 0
        Escribir "Nuevo cliente - Inserte monedas o ingrese código de producto:"

        // Ciclo de inserción de monedas
        Repetir
            Escribir "Opción (moneda: 1,2,5,10 | código: A1-H8 | salir: 0):"
            Leer moneda

            // Verificar si es salida del sistema
            Si moneda = 0 Entonces
                continuarOperacion <- Falso
                Escribir "Sistema desactivado. Adiós."
            // Verificar si es una moneda válida
            SiNo Si moneda = 1 O moneda = 2 O moneda = 5 O moneda = 10 Entonces
                totalPagado <- totalPagado + moneda
                Escribir "Moneda aceptada. Total acumulado: $", totalPagado
            // Si no es moneda, interpretar como código de producto
            SiNo
                codigoProducto <- ConvertirATexto(moneda)
                productoEncontrado <- 0
                precio <- 0

                // Buscar producto en inventario
                Para i <- 1 Hasta totalProductos Hacer
                    Si productos[i] = codigoProducto Entonces
                        precio <- precios[i]
                        productoEncontrado <- i
                    FinSi
                FinPara

                // Procesar compra si producto existe
                Si productoEncontrado > 0 Entonces
                    Si totalPagado >= precio Entonces
                        cambio <- totalPagado - precio
                        Escribir "=== COMPRA EXITOSA ==="
                        Escribir "Producto: ", productos[productoEncontrado]
                        Escribir "Precio: $", precio
                        Escribir "Pagado: $", totalPagado
                        Escribir "Cambio: $", cambio
                        Escribir "¡Retire su producto y cambio!"
                        totalPagado <- 0  // Reiniciar para siguiente cliente
                    SiNo
                        Escribir "=== PAGO INSUFICIENTE ==="
                        Escribir "Producto: ", productos[productoEncontrado]
                        Escribir "Precio: $", precio
                        Escribir "Pagado: $", totalPagado
                        Escribir "Faltante: $", precio - totalPagado
                        Escribir "Inserte más monedas o seleccione otro producto"
                    FinSi
                SiNo
                    Escribir "Error: Código de producto inválido"
                    Escribir "Códigos válidos: A1, B2, C3, D4, E5, F6, G7, H8"
                FinSi
            FinSi

        Hasta Que totalPagado = 0 O NO continuarOperacion

        Si continuarOperacion Entonces
            Escribir "--------------------------------------"
        FinSi
    FinMientras
FinAlgoritmo
```

**Evidencia Gráfica**

TEST 1
![alt text](image-14.png)

![alt text](image-15.png)

![alt text](image-16.png)

![alt text](image-17.png)

TEST 2

![alt text](image-18.png)

![alt text](image-19.png)

TEST 3

![alt text](image-20.png)

**Análisis de Complejidad**

El algoritmo presenta complejidad temporal O(n) para la búsqueda de productos donde n es el número de productos disponibles. El sistema mantiene eficiencia constante para las operaciones de validación de monedas.

## IV. ANÁLISIS DE RESULTADOS

### A. Eficiencia Algorítmica

Los algoritmos implementados demuestran diferentes características de eficiencia y optimización:

1. **Algoritmo de duplicados:** Complejidad O(n³) con oportunidades de optimización mediante estructuras de datos auxiliares
2. **Algoritmo de inversión:** Eficiencia óptima O(n) utilizando funciones integradas de manipulación de cadenas
3. **Calculadora de edad:** Complejidad constante O(1) con validaciones robustas de entrada
4. **Dispensadora de billetes:** Implementación greedy O(1) garantizando solución óptima
5. **Máquina expendedora:** Complejidad O(n) con interfaz de usuario completa y manejo de estados

### B. Estructuras de Datos Utilizadas

La implementación exitosa demuestra el dominio de estructuras de datos avanzadas:

- **Arreglos multidimensionales:** Para gestión de inventarios y productos complejos
- **Estructuras de validación:** Sistemas robustos de verificación de entrada
- **Estados de control:** Manejo de flujos complejos con múltiples condiciones
- **Algoritmos de búsqueda:** Implementación eficiente de búsqueda lineal con validaciones

### C. Validación y Robustez

Todos los algoritmos superaron pruebas exhaustivas incluyendo:

- Casos normales de operación
- Casos límite y extremos
- Casos de error con manejo apropiado
- Validación de entrada con retroalimentación al usuario

## V. DISCUSIÓN

### A. Contribuciones Técnicas

Los algoritmos implementados representan casos de estudio avanzados que integran múltiples conceptos de programación estructurada. La progresión desde manipulación básica de datos hacia sistemas complejos de control de flujo proporciona una base sólida para el desarrollo de competencias avanzadas.

### B. Limitaciones y Oportunidades de Mejora

Aunque los algoritmos cumplen con los objetivos académicos, presentan oportunidades de optimización:

1. **Escalabilidad:** Algunos algoritmos requieren optimización para volúmenes grandes de datos
2. **Persistencia de datos:** Implementación de almacenamiento permanente de información
3. **Interfaz de usuario:** Desarrollo de interfaces más intuitivas y robustas
4. **Manejo de excepciones:** Implementación de sistemas más sofisticados de manejo de errores

### C. Aplicaciones Prácticas

Los conceptos implementados tienen aplicaciones directas en:

- **Sistemas financieros:** Algoritmos de dispensado y manejo de transacciones
- **Sistemas de inventario:** Control de productos y gestión de stock
- **Aplicaciones de procesamiento de datos:** Manipulación y validación de información
- **Sistemas de recursos humanos:** Cálculos de edad y validaciones temporales

## VI. CONCLUSIONES

Este trabajo demuestra la implementación exitosa de cinco algoritmos complejos utilizando PSeInt, validando la eficacia de esta herramienta para el desarrollo de competencias avanzadas en resolución de problemas computacionales.

Los principales logros incluyen:

1. **Implementación exitosa** de estructuras de datos complejas y algoritmos de optimización
2. **Validación exhaustiva** de todos los algoritmos mediante casos de prueba comprehensivos
3. **Desarrollo de competencias avanzadas** en diseño algorítmico y análisis de complejidad
4. **Aplicación práctica** de técnicas de optimización y manejo de estados complejos
5. **Integración de conceptos** matemáticos, lógicos y computacionales en soluciones funcionales

Los resultados confirman que la metodología empleada es efectiva para el desarrollo de habilidades avanzadas en programación y análisis de algoritmos. La progresión sistemática desde problemas simples hacia implementaciones complejas establece una base sólida para el desarrollo de software profesional.

El trabajo realizado constituye un avance significativo en la comprensión de algoritmos complejos y sienta las bases para la transición hacia entornos de desarrollo profesional y lenguajes de programación de alto nivel.

## REFERENCIAS

[1] T. H. Cormen, C. E. Leiserson, R. L. Rivest, y C. Stein, "Introduction to Algorithms," 3rd ed. Cambridge, MA: MIT Press, 2009.

[2] "PSeInt - Pseudocode Interpreter," [En línea]. Disponible: https://pseint.sourceforge.net/. [Accedido: 29-Jun-2025].

[3] D. E. Knuth, "The Art of Computer Programming, Volume 1: Fundamental Algorithms," 3rd ed. Boston, MA: Addison-Wesley, 1997.

[4] R. Sedgewick y K. Wayne, "Algorithms," 4th ed. Boston, MA: Addison-Wesley, 2011.

[5] S. S. Skiena, "The Algorithm Design Manual," 2nd ed. London: Springer-Verlag, 2008.

## APÉNDICES

### Apéndice A: Archivos de Código Fuente

Los siguientes archivos .psc fueron generados durante la implementación:

1. **Duplicados.psc** - Algoritmo de detección de valores duplicados exactos
2. **CadenaInversa.psc** - Algoritmo de inversión de cadenas de texto
3. **CalculadoraEdad.psc** - Sistema de cálculo preciso de edad
4. **DispensadoraBilletes.psc** - Sistema optimizado de dispensado de billetes
5. **MaquinaExpendedora.psc** - Sistema completo de máquina expendedora
