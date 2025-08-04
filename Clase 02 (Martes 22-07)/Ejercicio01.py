# ========================================
# EJERCICIO 1: PREPARAR UN SÁNDWICH
# ========================================

print("=== ALGORITMO: PREPARAR UN SÁNDWICH ===")

# Verificar si hay ingredientes
tiene_pan = input("¿Tienes pan? (s/n): ").lower() == 's'
tiene_jamon = input("¿Tienes jamón? (s/n): ").lower() == 's'
tiene_queso = input("¿Tienes queso? (s/n): ").lower() == 's'

if tiene_pan and tiene_jamon and tiene_queso:
    print("✓ Sacar los ingredientes")
else:
    print("✗ Ir a comprar ingredientes")
    print("✓ Regresar a casa")
    print("✓ Sacar los ingredientes")

print("✓ Untar mantequilla al pan")
print("✓ Poner jamón")
print("✓ Poner queso")
print("✓ Cerrar el sándwich")
print("✓ Servir el sándwich")
print("¡Sándwich listo!")

print("\n" + "="*50 + "\n")