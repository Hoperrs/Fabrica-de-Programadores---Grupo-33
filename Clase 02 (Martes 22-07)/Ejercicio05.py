# ========================================
# EJERCICIO 5: CAJERO AUTOMÁTICO SIMPLE
# ========================================

print("=== CAJERO AUTOMÁTICO ===")

# Verificar PIN
pin_correcto = "1234"
pin = input("Ingrese su PIN: ")

if pin != pin_correcto:
    print("❌ PIN incorrecto. Acceso denegado")
else:
    print("✅ PIN correcto. Bienvenido")
    saldo = 1000
    
    while True:
        print("\n" + "="*30)
        print("MENÚ:")
        print("1 - Ver saldo")
        print("2 - Retirar dinero") 
        print("3 - Salir")
        print("="*30)
        
        opcion = input("Seleccione una opción (1-3): ")
        
        if opcion == "1":
            print(f"💰 Su saldo es S/ {saldo}")
            
        elif opcion == "2":
            monto = float(input("💸 Ingrese monto a retirar: S/ "))
            
            if monto <= saldo:
                saldo = saldo - monto
                print(f"✅ Retiro exitoso")
                print(f"💰 Nuevo saldo: S/ {saldo}")
            else:
                print("❌ Fondos insuficientes")
                
        elif opcion == "3":
            print("👋 Gracias por usar nuestro cajero")
            break
            
        else:
            print("⚠️ Opción inválida")

print("\n🔚 Fin del programa")
print("\n" + "="*50 + "\n")