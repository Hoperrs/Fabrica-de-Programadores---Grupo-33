Algoritmo AdivinarNumero
    Definir numeroSecreto, numeroUsuario, intentos, maxIntentos Como Entero
    
    Escribir "=== JUEGO: ADIVINAR UN NUMERO ==="
    
    numeroSecreto <- 7
    intentos <- 0
    maxIntentos <- 3
    
    Escribir "Adivina el numero del 1 al 10!"
    Escribir "Tienes ", maxIntentos, " intentos"
    
    Mientras intentos < maxIntentos Hacer
        intentos <- intentos + 1
        Escribir Sin Saltar "Intento ", intentos, ": Ingresa un numero: "
        Leer numeroUsuario
        
        Si numeroUsuario = numeroSecreto Entonces
            Escribir "Ganaste! Adivinaste en ", intentos, " intentos"
            intentos <- maxIntentos // Salir del bucle
        Sino
            Si numeroUsuario > numeroSecreto Entonces
                Escribir "El numero es menor"
            Sino
                Escribir "El numero es mayor"
            FinSi
            
            Si intentos = maxIntentos Entonces
                Escribir "Se acabaron los intentos! El numero era ", numeroSecreto
            FinSi
        FinSi
    FinMientras
FinAlgoritmo