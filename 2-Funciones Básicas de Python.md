# Funciones Básicas de Python

## Funciones de Entrada y Salida

### 1. **`print()`** - Mostrar Información
**Descripción:** Muestra información en la consola. Puede imprimir múltiples valores separados por comas.

**Ejemplos:**
```python
print("Hola mundo")
print("Mi edad es:", 25)
print("Nombre:", "Juan", "Edad:", 30)
print("Sin salto de línea", end="")
print("Separador personalizado", 1, 2, 3, sep="-")  # 1-2-3
print()  # Línea vacía
```

### 2. **`input()`** - Recibir Entrada del Usuario
**Descripción:** Solicita al usuario que ingrese texto. Siempre devuelve una cadena (string).

**Ejemplos:**
```python
nombre = input("¿Cuál es tu nombre? ")
edad = input("¿Cuántos años tienes? ")  # Devuelve string
edad_num = int(input("Ingresa tu edad: "))  # Convertir a número
respuesta = input("¿Continuar? (s/n): ")
```

---

## Funciones de Información

### 3. **`len()`** - Longitud de Objetos
**Descripción:** Devuelve la cantidad de elementos en secuencias (strings, listas, diccionarios, etc.).

**Ejemplos:**
```python
len("Hola")              # 4
len([1, 2, 3, 4, 5])     # 5
len({"a": 1, "b": 2})    # 2
len({1, 2, 3})           # 3
len("")                  # 0
```

### 4. **`type()`** - Tipo de Dato
**Descripción:** Devuelve el tipo de dato de un objeto.

**Ejemplos:**
```python
type(42)           # <class 'int'>
type(3.14)         # <class 'float'>
type("hola")       # <class 'str'>
type([1, 2, 3])    # <class 'list'>
type(True)         # <class 'bool'>

# Verificar tipo
if type(edad) == int:
    print("Es un entero")
```

---

## Funciones Matemáticas Básicas

### 5. **`abs()`** - Valor Absoluto
**Descripción:** Devuelve el valor absoluto de un número (sin signo negativo).

**Ejemplos:**
```python
abs(-5)        # 5
abs(5)         # 5
abs(-3.14)     # 3.14
abs(0)         # 0
```

### 6. **`round()`** - Redondear Números
**Descripción:** Redondea un número a una cantidad específica de decimales.

**Ejemplos:**
```python
round(3.14159)          # 3
round(3.14159, 2)       # 3.14
round(3.14159, 4)       # 3.1416
round(2.5)              # 2 (redondeo bancario)
round(123.456, -1)      # 120.0 (redondeo a decenas)
```

### 7. **`max()`** - Valor Máximo
**Descripción:** Devuelve el valor más grande de una secuencia o de múltiples argumentos.

**Ejemplos:**
```python
max([1, 5, 3, 9, 2])    # 9
max(10, 20, 5)          # 20
max("python")           # 'y' (mayor en ASCII)
max([1, 2], [3, 4])     # [3, 4] (compara elemento por elemento)
```

### 8. **`min()`** - Valor Mínimo
**Descripción:** Devuelve el valor más pequeño de una secuencia o de múltiples argumentos.

**Ejemplos:**
```python
min([1, 5, 3, 9, 2])    # 1
min(10, 20, 5)          # 5
min("python")           # 'h' (menor en ASCII)
min([1, 2], [3, 4])     # [1, 2]
```

### 9. **`sum()`** - Suma de Elementos
**Descripción:** Suma todos los elementos numéricos de una secuencia.

**Ejemplos:**
```python
sum([1, 2, 3, 4, 5])    # 15
sum((10, 20, 30))       # 60
sum([1.5, 2.5, 3.0])    # 7.0
sum([1, 2, 3], 10)      # 16 (suma + valor inicial)
sum([])                 # 0
```

---

## Funciones de Secuencia

### 10. **`range()`** - Generar Secuencias
**Descripción:** Genera una secuencia de números. Muy usado en bucles.

**Ejemplos:**
```python
list(range(5))          # [0, 1, 2, 3, 4]
list(range(1, 6))       # [1, 2, 3, 4, 5]
list(range(0, 10, 2))   # [0, 2, 4, 6, 8]
list(range(10, 0, -1))  # [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

# En bucles
for i in range(3):
    print(i)  # 0, 1, 2
```

### 11. **`sorted()`** - Ordenar Elementos
**Descripción:** Devuelve una nueva lista con los elementos ordenados (no modifica la original).

**Ejemplos:**
```python
sorted([3, 1, 4, 1, 5])         # [1, 1, 3, 4, 5]
sorted("python")                # ['h', 'n', 'o', 'p', 't', 'y']
sorted([3, 1, 4], reverse=True) # [4, 3, 1]
sorted(["banana", "apple", "cherry"])  # ['apple', 'banana', 'cherry']

# Lista original no cambia
numeros = [3, 1, 4]
ordenados = sorted(numeros)     # numeros sigue siendo [3, 1, 4]
```

### 12. **`reversed()`** - Invertir Secuencia
**Descripción:** Devuelve un iterador que recorre la secuencia en orden inverso.

**Ejemplos:**
```python
list(reversed([1, 2, 3, 4]))    # [4, 3, 2, 1]
list(reversed("hola"))          # ['a', 'l', 'o', 'h']
"".join(reversed("python"))     # "nohtyp"

# En bucles
for item in reversed([1, 2, 3]):
    print(item)  # 3, 2, 1
```

---

## Declaración de Eliminación

### 13. **`del`** - Eliminar Objetos
**Descripción:** Elimina variables, elementos de listas, claves de diccionarios, etc. (Técnicamente es una declaración, no una función).

**Ejemplos:**
```python
# Eliminar variable
x = 10
del x  # x ya no existe

# Eliminar elemento de lista
lista = [1, 2, 3, 4, 5]
del lista[2]  # lista = [1, 2, 4, 5]
del lista[1:3]  # Eliminar slice

# Eliminar clave de diccionario
diccionario = {"a": 1, "b": 2, "c": 3}
del diccionario["b"]  # {"a": 1, "c": 3}

# Eliminar toda la lista
del lista  # lista ya no existe
```

---

## Funciones de Ayuda

### 14. **`help()`** - Obtener Ayuda
**Descripción:** Muestra información de ayuda sobre funciones, módulos o objetos.

**Ejemplos:**
```python
help(print)         # Muestra ayuda de print()
help(len)           # Muestra ayuda de len()
help(str.upper)     # Ayuda de método de string
help()              # Inicia modo de ayuda interactivo
```

---

## Notas Importantes

- **`input()`** siempre devuelve string, usa `int()` o `float()` para convertir
- **`del`** es una declaración, no una función, por eso no lleva paréntesis
- **`range()`** devuelve un objeto range, usa `list()` para ver los valores
- **`sorted()`** no modifica la lista original, a diferencia de `.sort()`
- **`max()`** y **`min()`** requieren que los elementos sean comparables
- **`sum()`** solo funciona con números, no con strings