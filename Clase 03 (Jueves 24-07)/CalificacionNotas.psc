Algoritmo CalificacionNotas
	Definir nota Como Real
	
	Escribir "Ingresa tu calificacion (0-20):"
	Leer nota
	
	Si nota >= 18 Entonces
		Escribir "Excelente - A"
	SiNo
		Si nota >= 16 Entonces
			Escribir "Muy bien - B"
		SiNo
			Si nota >= 14 Entonces
				Escribir "Bien - C"
			SiNo
				Escribir  "Reprobado"
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo