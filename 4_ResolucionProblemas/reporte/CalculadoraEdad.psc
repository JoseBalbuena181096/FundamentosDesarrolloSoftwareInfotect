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