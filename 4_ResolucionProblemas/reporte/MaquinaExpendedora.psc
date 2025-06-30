Algoritmo MaquinaExpendedora
    // =====================================================
    // PROGRAMA: MAQUINA EXPENDEDORA INTELIGENTE
    // DESCRIPCION: Sistema que simula una maquina expendedora
    // que acepta monedas y dispensa productos mediante comandos
    // =====================================================
    
    // Declaracion de variables globales
    Dimension productos[10]               // Array para codigos de productos
    Dimension precios[10]                 // Array para precios de productos
    Definir totalProductos Como Entero    // Contador de productos disponibles
    Definir totalDinero Como Real         // Dinero acumulado por el cliente
    Definir comando Como Cadena           // Comando ingresado por el usuario
    Definir sistemaActivo Como Logico     // Control del ciclo principal
    Definir i Como Entero                 // Variable auxiliar para ciclos
    Definir productoEncontrado Como Logico // Variable para verificar productos
    Definir precioProducto Como Real      // Precio del producto seleccionado
    Definir cambio Como Real              // Cambio a devolver
    
    // Inicializar el sistema
    totalProductos <- 8
    
    // Inicializar codigos y precios de productos
    productos[1] <- "A1"; precios[1] <- 15.50  // Galletas Oreo
    productos[2] <- "B2"; precios[2] <- 12.00  // Refresco Cola
    productos[3] <- "C3"; precios[3] <- 18.75  // Chocolate Snickers
    productos[4] <- "D4"; precios[4] <- 20.00  // Sandwich Jamon
    productos[5] <- "E5"; precios[5] <- 8.50   // Agua Natural
    productos[6] <- "F6"; precios[6] <- 22.00  // Jugo Naranja
    productos[7] <- "G7"; precios[7] <- 16.25  // Papas Sabritas
    productos[8] <- "H8"; precios[8] <- 13.75  // Dulces Mazapan
    
    // Mostrar informacion inicial
    Escribir "==============================================="
    Escribir "    MAQUINA EXPENDEDORA INTELIGENTE"
    Escribir "==============================================="
    Escribir ""
    Escribir "PRODUCTOS DISPONIBLES:"
    Escribir "----------------------"
    
    // Mostrar todos los productos disponibles
    Para i <- 1 Hasta totalProductos Hacer
        Escribir productos[i], " - $", precios[i]
    FinPara
    
    Escribir ""
    Escribir "COMANDOS DISPONIBLES:"
    Escribir "--------------------"
    Escribir "* Monedas: 1, 2, 5, 10, 20 (pesos)"
    Escribir "* Codigos: A1-H8 (seleccionar producto)"
    Escribir "* RETIRAR (devolver dinero)"
    Escribir "* PARA (salir del sistema)"
    Escribir "==============================================="
    
    // Ciclo principal del sistema
    sistemaActivo <- Verdadero
    
    Mientras sistemaActivo Hacer
        totalDinero <- 0
        Escribir ""
        Escribir "=== NUEVA OPERACION ==="
        Escribir "Dinero acumulado: $0.00"
        Escribir "Ingrese comando (moneda/codigo/RETIRAR/PARA):"
        
        // Ciclo de una operacion completa
        Repetir
            Leer comando
            
            // Convertir comando a mayusculas manualmente
            Si comando = "para" O comando = "PARA" Entonces
                comando <- "PARA"
            FinSi
            Si comando = "retirar" O comando = "RETIRAR" Entonces
                comando <- "RETIRAR"
            FinSi
            
            // Procesar el comando ingresado
            Si comando = "PARA" Entonces
                sistemaActivo <- Falso
                Escribir "=== SISTEMA DETENIDO ==="
                Escribir "Gracias por usar la maquina expendedora"
            SiNo 
                Si comando = "RETIRAR" Entonces
                    // Procesar retiro de dinero
                    Si totalDinero > 0 Entonces
                        Escribir ""
                        Escribir "=== RETIRO DE DINERO ==="
                        Escribir "Devolviendo: $", totalDinero
                        Escribir "Operacion cancelada"
                        Escribir "¡Retire su dinero!"
                        totalDinero <- 0
                    SiNo
                        Escribir "No hay dinero para retirar"
                        Escribir "Ingrese siguiente comando:"
                    FinSi
                SiNo 
                    // Verificar si es una moneda valida
                    Si comando = "1" O comando = "2" O comando = "5" O comando = "10" O comando = "20" Entonces
                        // Procesar moneda
                        totalDinero <- totalDinero + ConvertirANumero(comando)
                        Escribir "Moneda de $", comando, " aceptada"
                        Escribir "Total acumulado: $", totalDinero
                        Escribir "Ingrese siguiente comando:"
                    SiNo
                        // Verificar si es un codigo de producto valido
                        productoEncontrado <- Falso
                        
                        // Buscar el codigo en la lista de productos
                        Para i <- 1 Hasta totalProductos Hacer
                            Si productos[i] = comando Entonces
                                productoEncontrado <- Verdadero
                                precioProducto <- precios[i]
                            FinSi
                        FinPara
                        
                        Si productoEncontrado Entonces
                            // Procesar compra de producto
                            Si totalDinero >= precioProducto Entonces
                                // Dinero suficiente - realizar compra
                                cambio <- totalDinero - precioProducto
                                
                                Escribir ""
                                Escribir "=== COMPRA EXITOSA ==="
                                Escribir "Producto: ", comando
                                Escribir "Precio: $", precioProducto
                                Escribir "Pagado: $", totalDinero
                                Escribir "Cambio: $", cambio
                                Escribir "¡Retire su producto!"
                                
                                Si cambio > 0 Entonces
                                    Escribir "¡No olvide su cambio!"
                                FinSi
                                
                                // Reiniciar dinero para nueva operacion
                                totalDinero <- 0
                            SiNo
                                // Dinero insuficiente
                                Escribir ""
                                Escribir "=== DINERO INSUFICIENTE ==="
                                Escribir "Producto: ", comando
                                Escribir "Precio: $", precioProducto
                                Escribir "Pagado: $", totalDinero
                                Escribir "Faltante: $", precioProducto - totalDinero
                                Escribir "Inserte mas monedas o seleccione otro producto"
                                Escribir "Ingrese siguiente comando:"
                            FinSi
                        SiNo
                            // Comando no valido
                            Escribir ""
                            Escribir "COMANDO NO VALIDO"
                            Escribir "Comandos disponibles:"
                            Escribir "   * Monedas: 1, 2, 5, 10, 20"
                            Escribir "   * Productos: A1, B2, C3, D4, E5, F6, G7, H8"
                            Escribir "   * RETIRAR (devolver dinero)"
                            Escribir "   * PARA (salir)"
                            Escribir "Ingrese comando valido:"
                        FinSi
                    FinSi
                FinSi
            FinSi
            
        Hasta Que totalDinero = 0 O NO sistemaActivo
    FinMientras
FinAlgoritmo