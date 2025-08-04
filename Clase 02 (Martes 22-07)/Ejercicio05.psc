Algoritmo CajeroAutomatico
    Definir pin, pinCorrecto Como Caracter
    Definir saldo, monto Como Real
    Definir opcion Como Entero
    Definir continuar Como Logico
    
    Escribir "=== CAJERO AUTOMATICO ==="
    
    pinCorrecto <- "1234"
    
    // Verificar PIN
    Escribir Sin Saltar "Ingrese su PIN: "
    Leer pin
    
    Si pin <> pinCorrecto Entonces
        Escribir "PIN incorrecto. Acceso denegado"
    Sino
        Escribir "PIN correcto. Bienvenido"
        saldo <- 1000
        continuar <- Verdadero
        
        Mientras continuar Hacer
            Escribir "=========================="
            Escribir "MENU:"
            Escribir "1 - Ver saldo"
            Escribir "2 - Retirar dinero"
            Escribir "3 - Salir"
            Escribir "=========================="
            Escribir Sin Saltar "Seleccione una opcion (1-3): "
            Leer opcion
            
            Segun opcion Hacer
                Caso 1:
                    Escribir "Su saldo es S/ ", saldo
                Caso 2:
                    Escribir Sin Saltar "Ingrese monto a retirar: S/ "
                    Leer monto
                    Si monto <= saldo Entonces
                        saldo <- saldo - monto
                        Escribir "Retiro exitoso"
                        Escribir "Nuevo saldo: S/ ", saldo
                    Sino
                        Escribir "Fondos insuficientes"
                    FinSi
                Caso 3:
                    Escribir "Gracias por usar nuestro cajero"
                    continuar <- Falso
                De Otro Modo:
                    Escribir "Opcion invalida"
            FinSegun
        FinMientras
    FinSi
    
    Escribir "Fin del programa"
FinAlgoritmo