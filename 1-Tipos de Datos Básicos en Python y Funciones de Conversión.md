# Tipos de Datos Básicos en Python y Funciones de Conversión

## Tipos de Datos Básicos

### 1. `int` (Enteros)
**Descripción:** Números enteros sin decimales, pueden ser positivos, negativos o cero.

**Ejemplos:**
```python
edad = 25
temperatura = -10
cero = 0
numero_grande = 1000000
```

### 2. `float` (Números Flotantes)
**Descripción:** Números con decimales (punto flotante). Incluye números muy grandes o muy pequeños usando notación científica.

**Ejemplos:**
```python
precio = 19.99
pi = 3.14159
negativo = -7.5
cientifico = 1.5e10  # 15,000,000,000
pequeno = 2.3e-4    # 0.00023
```

### 3. `str` (Cadenas de Texto)
**Descripción:** Secuencias de caracteres delimitadas por comillas simples, dobles o triples.

**Ejemplos:**
```python
nombre = "Juan"
apellido = 'Pérez'
mensaje = """Este es un
mensaje de múltiples líneas"""
vacio = ""
con_numeros = "123abc"
```

### 4. `bool` (Booleanos)
**Descripción:** Valores lógicos que solo pueden ser `True` o `False`.

**Ejemplos:**
```python
es_mayor = True
esta_lloviendo = False
resultado = 5 > 3  # True
activo = not False  # True
```

### 5. `list` (Listas)
**Descripción:** Colecciones ordenadas y modificables que pueden contener elementos de diferentes tipos.

**Ejemplos:**
```python
numeros = [1, 2, 3, 4, 5]
frutas = ["manzana", "banana", "naranja"]
mixta = [1, "hola", True, 3.14]
vacia = []
anidada = [[1, 2], [3, 4], [5, 6]]
```

### 6. `dict` (Diccionarios)
**Descripción:** Colecciones de pares clave-valor, no ordenadas (antes de Python 3.7) y modificables.

**Ejemplos:**
```python
persona = {"nombre": "Ana", "edad": 30, "ciudad": "Madrid"}
vacio = {}
mixto = {"id": 1, "activo": True, "notas": [8.5, 9.0]}
anidado = {"usuario": {"nombre": "Carlos", "permisos": ["leer", "escribir"]}}
```

### 7. `set` (Conjuntos)
**Descripción:** Colecciones de elementos únicos, no ordenadas y modificables. No permiten duplicados.

**Ejemplos:**
```python
numeros = {1, 2, 3, 4, 5}
colores = {"rojo", "verde", "azul"}
vacio = set()  # Nota: {} crea un dict vacío, no un set
con_duplicados = {1, 1, 2, 2, 3}  # Resultado: {1, 2, 3}
```

### 8. `numpy.array` (Arrays de NumPy)
**Descripción:** Arrays multidimensionales optimizados para cálculos numéricos. Requiere importar NumPy.

**Ejemplos:**
```python
import numpy as np

# Array 1D
arr_1d = np.array([1, 2, 3, 4, 5])

# Array 2D
arr_2d = np.array([[1, 2, 3], [4, 5, 6]])

# Arrays especiales
ceros = np.zeros(5)        # [0. 0. 0. 0. 0.]
unos = np.ones((2, 3))     # Array 2x3 lleno de unos
rango = np.arange(0, 10, 2)  # [0 2 4 6 8]
```

---

## Funciones de Conversión

Todas las funciones de conversión permiten transformar un tipo de dato a otro(por ejemplo, de `str` a `int`, de `float` a `str`, etc.) mientras sea posible. Ademas estas funciones retornan un nuevo objeto del tipo deseado y no modifican el original.

### 1. `int()` - Conversión a Entero
```python
int("123")      # 123
int(45.7)       # 45 (trunca decimales)
int(True)       # 1
int(False)      # 0
int("0b1010", 2)  # 10 (binario a decimal)
```

### 2. `float()` - Conversión a Flotante
```python
float("3.14")   # 3.14
float(42)       # 42.0
float(True)     # 1.0
float("inf")    # inf (infinito)
```

### 3. `str()` - Conversión a Cadena
```python
str(123)        # "123"
str(3.14)       # "3.14"
str(True)       # "True"
str([1, 2, 3])  # "[1, 2, 3]"
```

### 4. `bool()` - Conversión a Booleano
```python
bool(1)         # True
bool(0)         # False
bool("hola")    # True
bool("")        # False
bool([1, 2])    # True
bool([])        # False
```

### 5. `list()` - Conversión a Lista
```python
list("hola")           # ['h', 'o', 'l', 'a']
list((1, 2, 3))        # [1, 2, 3] (de tupla)
list({1, 2, 3})        # [1, 2, 3] (de set)
list(range(5))         # [0, 1, 2, 3, 4]
```

### 6. `dict()` - Conversión a Diccionario
```python
dict([("a", 1), ("b", 2)])     # {'a': 1, 'b': 2}
dict(zip(['x', 'y'], [1, 2]))  # {'x': 1, 'y': 2}
dict(a=1, b=2)                 # {'a': 1, 'b': 2}
```

### 7. `set()` - Conversión a Conjunto
```python
set([1, 2, 2, 3])      # {1, 2, 3}
set("hola")            # {'h', 'o', 'l', 'a'}
set((1, 2, 3))         # {1, 2, 3} (de tupla)
```

### 8. `np.array()` - Conversión a Array NumPy
```python
import numpy as np

np.array([1, 2, 3])           # array([1, 2, 3])
np.array([[1, 2], [3, 4]])    # array 2D

# Conversiones específicas
np.array([1, 2, 3], dtype=float)  # array([1., 2., 3.])
lista_a_array = np.array([1, 2, 3, 4, 5])
```

---

## Notas Importantes

- **int()** no puede convertir strings con decimales directamente: `int("3.14")` dará error
- **float()** y **str()** son las más flexibles para conversiones
- **bool()** considera "falsy": `0`, `""`, `[]`, `{}`, `set()`, `None`, `False`
- **numpy.array()** requiere que todos los elementos sean del mismo tipo
- Las conversiones pueden fallar si los datos no son compatibles (lanzarán excepciones)