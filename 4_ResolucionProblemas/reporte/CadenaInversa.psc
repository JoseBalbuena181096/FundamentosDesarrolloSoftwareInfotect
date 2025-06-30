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