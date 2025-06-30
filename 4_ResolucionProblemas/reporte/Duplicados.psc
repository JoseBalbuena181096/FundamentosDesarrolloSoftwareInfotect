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