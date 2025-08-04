# Operadores y Estructuras de Control en Python

## Operadores en Python

### Operadores Aritméticos
```python
# Operaciones básicas
a + b      # Suma
a - b      # Resta
a * b      # Multiplicación
a / b      # División (devuelve float)
a // b     # División entera (sin decimales)
a % b      # Módulo (resto de la división)
a ** b     # Potencia (a elevado a b)

# Ejemplos
10 + 3     # 13
10 - 3     # 7
10 * 3     # 30
10 / 3     # 3.3333333333333335
10 // 3    # 3
10 % 3     # 1
10 ** 3    # 1000
```

### Operadores de Comparación
```python
a == b     # Igual a
a != b     # Diferente de
a > b      # Mayor que
a < b      # Menor que
a >= b     # Mayor o igual que
a <= b     # Menor o igual que

# Ejemplos
5 == 5     # True
5 != 3     # True
5 > 3      # True
5 < 3      # False
5 >= 5     # True
3 <= 5     # True
```

### Operadores Lógicos

#### **`and`** - Y Lógico
**Descripción:** Devuelve `True` solo si ambas condiciones son verdaderas.

#### **`or`** - O Lógico  
**Descripción:** Devuelve `True` si al menos una condición es verdadera.

#### **`not`** - No Lógico
**Descripción:** Invierte el valor lógico.

**Ejemplos:**
```python
True and True      # True
True and False     # False
True or False      # True
not True          # False
not False         # True

# Con variables
edad = 25
tiene_licencia = True
puede_conducir = edad >= 18 and tiene_licencia  # True
```

### Tabla de Verdad para `and` y `or`

| A     | B     | A and B | A or B |
|-------|-------|---------|--------|
| True  | True  | True    | True   |
| True  | False | False   | True   |
| False | True  | False   | True   |
| False | False | False   | False  |

### Operadores de Asignación
```python
a = 5      # Asignación simple
a += 3     # a = a + 3  (equivale a: a = 8)
a -= 2     # a = a - 2  (equivale a: a = 6)  
a *= 4     # a = a * 4  (equivale a: a = 24)
a /= 3     # a = a / 3  (equivale a: a = 8.0)
a //= 2    # a = a // 2 (equivale a: a = 4.0)
a %= 3     # a = a % 3  (equivale a: a = 1.0)
a **= 2    # a = a ** 2 (equivale a: a = 1.0)
```

### Operadores de Pertenencia
```python
"a" in "hola"           # True
"x" not in "hola"       # True
5 in [1, 2, 3, 4, 5]    # True
"clave" in {"clave": "valor"}  # True
```

---

## Estructuras Condicionales

### 1. **`if`** Simple
**Descripción:** Ejecuta código solo si la condición es verdadera.

```python
edad = 18
if edad >= 18:
    print("Eres mayor de edad")
    print("Puedes votar")

# Con operadores lógicos
nota = 85
if nota >= 70 and nota <= 100:
    print("Aprobaste")
```

### 2. **`if-else`**
**Descripción:** Ejecuta un código si la condición es verdadera, otro si es falsa.

```python
temperatura = 25
if temperatura > 30:
    print("Hace calor")
else:
    print("No hace tanto calor")

# Ejemplo con input
respuesta = input("¿Quieres continuar? (s/n): ")
if respuesta.lower() == "s":
    print("Continuando...")
else:
    print("Finalizando programa")
```

### 3. **`if-elif-else`**
**Descripción:** Permite evaluar múltiples condiciones en secuencia.

```python
calificacion = 85

if calificacion >= 90:
    print("Excelente")
elif calificacion >= 80:
    print("Muy bueno")
elif calificacion >= 70:
    print("Bueno")
elif calificacion >= 60:
    print("Suficiente")
else:
    print("Insuficiente")

# Ejemplo más complejo
hora = 14
if hora < 12:
    saludo = "Buenos días"
elif hora < 18:
    saludo = "Buenas tardes"
else:
    saludo = "Buenas noches"
print(saludo)
```

---

## Bucles

### 1. **Bucle `while`**
**Descripción:** Repite código mientras una condición sea verdadera.

```python
# Contador simple
contador = 0
while contador < 5:
    print(f"Contador: {contador}")
    contador += 1

# Con input del usuario
respuesta = ""
while respuesta != "salir":
    respuesta = input("Escribe 'salir' para terminar: ")
    print(f"Escribiste: {respuesta}")

# Con condición compleja
numero = 1
while numero <= 100 and numero % 7 != 0:
    numero += 1
print(f"Primer múltiplo de 7 mayor que 1: {numero}")
```

### 2. **Bucle `for`**
**Descripción:** Itera sobre secuencias (listas, strings, rangos, etc.).

```python
# Con listas
frutas = ["manzana", "banana", "naranja"]
for fruta in frutas:
    print(f"Me gusta la {fruta}")

# Con strings
for letra in "Python":
    print(letra)

# Con diccionarios (solo claves por defecto)
persona = {"nombre": "Ana", "edad": 25, "ciudad": "Madrid"}
for clave in persona:
    print(f"{clave}: {persona[clave]}")
```

---

## Funciones para Bucles

### 1. **`range()`** - Generar Secuencias Numéricas
**Descripción:** Crea secuencias de números para iterar.

```python
# range(stop)
for i in range(5):
    print(i)  # 0, 1, 2, 3, 4

# range(start, stop)
for i in range(2, 8):
    print(i)  # 2, 3, 4, 5, 6, 7

# range(start, stop, step)
for i in range(0, 10, 2):
    print(i)  # 0, 2, 4, 6, 8

# Rango decreciente
for i in range(10, 0, -1):
    print(i)  # 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

# Aplicación práctica
numeros = [10, 20, 30, 40, 50]
for i in range(len(numeros)):
    print(f"Índice {i}: {numeros[i]}")
```

### 2. **`enumerate()`** - Obtener Índice y Valor
**Descripción:** Devuelve pares de (índice, valor) al iterar sobre una secuencia.

```python
# Uso básico
colores = ["rojo", "verde", "azul"]
for indice, color in enumerate(colores):
    print(f"{indice}: {color}")
# 0: rojo
# 1: verde  
# 2: azul

# Empezar desde un número específico
for indice, color in enumerate(colores, start=1):
    print(f"{indice}: {color}")
# 1: rojo
# 2: verde
# 3: azul

# Con strings
palabra = "Python"
for i, letra in enumerate(palabra):
    print(f"Posición {i}: {letra}")

# Encontrar posición de un elemento
nombres = ["Ana", "Carlos", "María", "Juan"]
for i, nombre in enumerate(nombres):
    if nombre == "María":
        print(f"María está en la posición {i}")
```

### 3. **`.items()`** - Iterar Diccionarios
**Descripción:** Método de diccionarios que devuelve pares de (clave, valor).

```python
# Uso básico
estudiante = {
    "nombre": "Carlos",
    "edad": 20,
    "carrera": "Ingeniería",
    "promedio": 8.5
}

for clave, valor in estudiante.items():
    print(f"{clave}: {valor}")
# nombre: Carlos
# edad: 20
# carrera: Ingeniería
# promedio: 8.5

# Ejemplo práctico: contar caracteres
texto = "python"
contador = {}
for letra in texto:
    if letra in contador:
        contador[letra] += 1
    else:
        contador[letra] = 1

print("Frecuencia de letras:")
for letra, cantidad in contador.items():
    print(f"'{letra}': {cantidad}")

# Filtrar diccionario
precios = {"manzana": 2.5, "banana": 1.8, "naranja": 3.0, "pera": 2.2}
print("Frutas caras (> $2.00):")
for fruta, precio in precios.items():
    if precio > 2.0:
        print(f"{fruta}: ${precio}")
```

---

## Ejemplos Combinados

### Bucle `for` con `enumerate()` y condicionales
```python
calificaciones = [85, 92, 78, 96, 88, 74]
aprobados = 0
reprobados = 0

for i, nota in enumerate(calificaciones):
    if nota >= 80:
        print(f"Estudiante {i+1}: {nota} - APROBADO")
        aprobados += 1
    else:
        print(f"Estudiante {i+1}: {nota} - REPROBADO")
        reprobados += 1

print(f"\nResumen: {aprobados} aprobados, {reprobados} reprobados")
```

### Bucle `while` con múltiples condiciones
```python
intentos = 0
max_intentos = 3
adivinanza = 42

while intentos < max_intentos:
    numero = int(input(f"Intento {intentos + 1}: Adivina el número: "))
    intentos += 1
    
    if numero == adivinanza:
        print("¡Correcto! Ganaste")
        break
    elif numero < adivinanza:
        print("Muy bajo")
    else:
        print("Muy alto")
    
    if intentos == max_intentos:
        print(f"Se acabaron los intentos. El número era {adivinanza}")
```

---

## Palabras Clave de Control

- **`break`**: Sale completamente del bucle
- **`continue`**: Salta a la siguiente iteración
- **`pass`**: No hace nada (placeholder)

```python
# break
for i in range(10):
    if i == 5:
        break
    print(i)  # Imprime 0, 1, 2, 3, 4

# continue  
for i in range(5):
    if i == 2:
        continue
    print(i)  # Imprime 0, 1, 3, 4

# pass
for i in range(3):
    if i == 1:
        pass  # Aquí irá código después
    else:
        print(i)  # Imprime 0, 2
```