Algoritmo PrepararSandwich
	Definir tienePan, tieneJamon, tieneQueso Como Cadena
	Escribir '=== ALGORITMO: PREPARAR UN SANDWICH ==='
	// Verificar si hay ingredientes
	Escribir 'Tienes pan? (s/n): 'Sin Saltar
	Leer tienePan
	Escribir 'Tienes jamon? (s/n): 'Sin Saltar
	Leer tieneJamon
	Escribir 'Tienes queso? (s/n): 'Sin Saltar
	Leer tieneQueso
	Si (tienePan='s') Y (tieneJamon='s') Y (tieneQueso='s') Entonces
		Escribir 'Sacar los ingredientes'
	SiNo
		Escribir 'Ir a comprar ingredientes'
		Escribir 'Regresar a casa'
		Escribir 'Sacar los ingredientes'
	FinSi
	Escribir 'Untar mantequilla al pan'
	Escribir 'Poner jamon'
	Escribir 'Poner queso'
	Escribir 'Cerrar el sandwich'
	Escribir 'Servir el sandwich'
	Escribir 'Sandwich listo!'
FinAlgoritmo
