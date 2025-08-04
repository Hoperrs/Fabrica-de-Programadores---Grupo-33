Algoritmo DecidirRopa
	Definir llueve, haceFrio Como Cadena
	Escribir '=== ALGORITMO: DECIDIR QUE PONERSE SEGUN EL CLIMA ==='
	Escribir 'Esta lloviendo? (s/n): 'Sin Saltar
	Leer llueve
	Escribir 'Hace frio? (s/n): 'Sin Saltar
	Leer haceFrio
	Si (llueve='s') Y (haceFrio='s') Entonces
		Escribir 'Usar casaca y llevar paraguas'
	SiNo
		Si (llueve='s') Y (haceFrio='n') Entonces
			Escribir 'Solo llevar paraguas'
		SiNo
			Si (llueve='n') Y (haceFrio='s') Entonces
				Escribir 'Solo usar casaca'
			SiNo
				Escribir 'Usar ropa normal'
			FinSi
		FinSi
	FinSi
	Escribir 'Salir de casa'
FinAlgoritmo
