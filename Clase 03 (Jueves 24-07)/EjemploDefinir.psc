Algoritmo EjemploDefinir
	Definir nombre Como Cadena
	Definir edad Como Entero
	Definir altura Como Real
	Definir esEstudiante Como Logico
	
	nombre <- "Juan"
	edad <- 20
	altura <- 1.75
	esEstudiante <- Verdadero
	
	Escribir Sin Saltar "Ingresa tu nombre: "
	Leer nombre
	
	Escribir Sin Saltar "Ingresa tu altura: "
	Leer altura
	
	Escribir Sin Saltar "Ingresa tu edad: "
	Leer edad
	
	
	Escribir "Hola ", nombre, ", tienes ", edad, " años."
	Si edad >= 18 Entonces
		Escribir "Eres mayor de edad"
	SiNo
		Escribir "Eres menor de edad"
	FinSi
	
	
FinAlgoritmo