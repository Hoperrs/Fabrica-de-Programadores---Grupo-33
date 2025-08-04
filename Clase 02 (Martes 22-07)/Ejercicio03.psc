Algoritmo CalcularNotaFinal
    Definir nota1, nota2, nota3, examen, promedio Como Real
    Definir resultado Como Caracter
    
    Escribir "=== ALGORITMO: CALCULAR NOTA FINAL ==="
    
    // Pedir las notas
    Escribir Sin Saltar "Ingrese la primera nota de practica: "
    Leer nota1
    Escribir Sin Saltar "Ingrese la segunda nota de practica: "
    Leer nota2
    Escribir Sin Saltar "Ingrese la tercera nota de practica: "
    Leer nota3
    Escribir Sin Saltar "Ingrese la nota del examen final: "
    Leer examen
    
    // Calcular promedio
    promedio <- (nota1 + nota2 + nota3 + examen) / 4
    
    // Determinar resultado
    Si promedio >= 11 Entonces
        resultado <- "APROBADO"
    Sino
        resultado <- "DESAPROBADO"
    FinSi
    
    // Mostrar resultados
    Escribir "Nota final: ", promedio
    Escribir "Resultado: ", resultado
FinAlgoritmo
