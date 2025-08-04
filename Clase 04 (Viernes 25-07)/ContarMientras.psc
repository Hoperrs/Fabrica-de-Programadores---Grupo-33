Algoritmo ContarMientras
	Definir numero Como Entero
	Escribir Sin Saltar "Ingresa el numero: "
	Leer numero
	
	Mientras numero <= 20 Hacer
		numero <- numero + 1
		
		Si numero % 2 = 0 Entonces
			Escribir "El numero ", numero, " es par"
		SiNo
			Escribir "El numero ", numero, " es impar"
		FinSi
	FinMientras
	
FinAlgoritmo
