# ========================================
# EJERCICIO 4: ADIVINAR UN NÚMERO
# ========================================

print("=== JUEGO: ADIVINAR UN NÚMERO ===")

numero_secreto = 7
intentos = 0
max_intentos = 3

print("¡Adivina el número del 1 al 10!")
print(f"Tienes {max_intentos} intentos")

while intentos < max_intentos:
    numero_usuario = int(input(f"\nIntento {intentos + 1}: Ingresa un número: "))
    intentos += 1
    
    if numero_usuario == numero_secreto:
        print(f"🎉 ¡Ganaste! Adivinaste en {intentos} intentos")
        break
    elif numero_usuario > numero_secreto:
        print("📉 El número es menor")
    else:
        print("📈 El número es mayor")
        
    if intentos == max_intentos:
        print(f"😔 ¡Se acabaron los intentos! El número era {numero_secreto}")

print("\n" + "="*50 + "\n")