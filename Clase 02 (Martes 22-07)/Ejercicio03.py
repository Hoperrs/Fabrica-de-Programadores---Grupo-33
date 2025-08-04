# ========================================
# EJERCICIO 3: CALCULAR LA NOTA FINAL DE UN ESTUDIANTE
# ========================================

print("=== ALGORITMO: CALCULAR NOTA FINAL ===")

# Pedir las notas
nota1 = float(input("Ingrese la primera nota de práctica: "))
nota2 = float(input("Ingrese la segunda nota de práctica: "))
nota3 = float(input("Ingrese la tercera nota de práctica: "))
examen = float(input("Ingrese la nota del examen final: "))

# Calcular promedio
promedio = (nota1 + nota2 + nota3 + examen) / 4

# Determinar resultado
if promedio >= 11:
    resultado = "APROBADO"
else:
    resultado = "DESAPROBADO"

# Mostrar resultados
print(f"\nNota final: {promedio:.2f}")
print(f"Resultado: {resultado}")

print("\n" + "="*50 + "\n")