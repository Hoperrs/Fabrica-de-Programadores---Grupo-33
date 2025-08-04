# ========================================
# EJERCICIO 2: DECIDIR QUÉ PONERSE SEGÚN EL CLIMA
# ========================================

print("=== ALGORITMO: DECIDIR QUÉ PONERSE SEGÚN EL CLIMA ===")

llueve = input("¿Está lloviendo? (s/n): ").lower() == 's'
hace_frio = input("¿Hace frío? (s/n): ").lower() == 's'

if llueve and hace_frio:
    print("🧥☂️ Usar casaca y llevar paraguas")
elif llueve and not hace_frio:
    print("☂️ Solo llevar paraguas")
elif not llueve and hace_frio:
    print("🧥 Solo usar casaca")
else:
    print("👕 Usar ropa normal")

print("✓ Salir de casa")

print("\n" + "="*50 + "\n")