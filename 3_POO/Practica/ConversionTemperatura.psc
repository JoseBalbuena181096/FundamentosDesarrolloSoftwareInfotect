Proceso ConversionTemperatura
	// Solicitar la temperatura en Celsius
	Escribir "Ingrese la temperatura en grados Celsius:"
	Leer celsius
	// Convertir a Fahrenheit usando la fórmula: F = (C * 9/5) + 32
	fahrenheit <- (celsius * 9/5) + 32
	// Mostrar el resultado
	Escribir celsius, "°C equivale a ", fahrenheit, "°F"
FinProceso