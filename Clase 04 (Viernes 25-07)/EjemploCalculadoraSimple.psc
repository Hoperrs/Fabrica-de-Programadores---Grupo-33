Algoritmo EjemploCalculadoraSimple
	Definir opcion Como Entero
	Definir a, b Como Real
	
	Escribir "=== MENU PRINCIPAL ==="
	Escribir "1. Suma"
	Escribir "2. Resta"
	Escribir "3. Multiplicacion"
	Escribir "4. Division"
	Escribir "Elige una opcion:"
	Leer opcion
	
	Segun opcion Hacer
		Caso 1:
			Escribir "Seleccionaste SUMA"
			Escribir "Ingresa dos numeros:"
			Escribir Sin Saltar "Ingresa a: "
			Leer a
			Escribir Sin Saltar "Ingresa b: "
			Leer b
			Escribir "Resultado: ", a + b
	FinSegun
	
FinAlgoritmo
