# Métodos Más Comunes por Tipo de Dato en Python

## Métodos de Strings (`str`)

### Métodos de Formato y Caso
```python
texto = "  Hola Mundo Python  "

# Cambio de caso
texto.lower()           # "  hola mundo python  "
texto.upper()           # "  HOLA MUNDO PYTHON  "
texto.capitalize()      # "  hola mundo python  "
texto.title()           # "  Hola Mundo Python  "
texto.swapcase()        # "  hOLA mUNDO pYTHON  "

# Ejemplos prácticos
nombre = "JUAN"
print(f"Hola {nombre.lower().capitalize()}")  # "Hola Juan"

email = "USUARIO@GMAIL.COM"
print(email.lower())    # "usuario@gmail.com"
```

### Métodos de Limpieza y Búsqueda
```python
texto = "  Hola Mundo Python  "

# Limpieza de espacios
texto.strip()           # "Hola Mundo Python"
texto.lstrip()          # "Hola Mundo Python  "
texto.rstrip()          # "  Hola Mundo Python"
texto.strip(" P")       # "Hola Mundo Python" (quita espacios y P)

# Búsqueda y conteo
texto.count("o")        # 2
texto.find("Mundo")     # 7 (posición donde empieza)
texto.find("Java")      # -1 (no encontrado)
texto.index("Python")   # 13 (como find pero lanza error si no encuentra)

# Verificaciones
"123".isdigit()         # True
"abc".isalpha()         # True
"abc123".isalnum()      # True
"Hola".startswith("H")  # True
"mundo.txt".endswith(".txt")  # True
```

### Métodos de División y Unión
```python
# División de strings
frase = "manzana,banana,naranja,pera"
frutas = frase.split(",")           # ['manzana', 'banana', 'naranja', 'pera']
palabras = "Hola mundo".split()     # ['Hola', 'mundo'] (por espacios)
lineas = "línea1\nlínea2".split("\n")  # ['línea1', 'línea2']

# Unión de listas en strings
lista_frutas = ['manzana', 'banana', 'naranja']
resultado = ", ".join(lista_frutas)  # "manzana, banana, naranja"
numeros = [1, 2, 3, 4]
"-".join(map(str, numeros))         # "1-2-3-4"

# Ejemplos prácticos
nombres = "Ana María José Carlos".split()
print(f"Hay {len(nombres)} personas: {' y '.join(nombres)}")
```

### Métodos de Reemplazo
```python
texto = "Hola mundo, mundo hermoso"

# Reemplazos
texto.replace("mundo", "Python")           # "Hola Python, Python hermoso"
texto.replace("mundo", "Python", 1)       # "Hola Python, mundo hermoso" (solo 1 vez)

# Formateo
nombre = "Ana"
edad = 25
"Mi nombre es {} y tengo {} años".format(nombre, edad)  # Método clásico
f"Mi nombre es {nombre} y tengo {edad} años"            # f-string (más moderno)

# Centrado y relleno
"Python".center(10, "-")    # "--Python-"
"Python".ljust(10, ".")     # "Python...."
"Python".rjust(10, "*")     # "***Python"
"42".zfill(5)               # "00042"
```

---

## Métodos de Listas (`list`)

### Métodos de Modificación
```python
frutas = ["manzana", "banana"]

# Agregar elementos
frutas.append("naranja")        # ['manzana', 'banana', 'naranja']
frutas.insert(1, "pera")        # ['manzana', 'pera', 'banana', 'naranja']
frutas.extend(["uva", "kiwi"])  # ['manzana', 'pera', 'banana', 'naranja', 'uva', 'kiwi']

# Eliminar elementos
frutas.remove("banana")         # Elimina la primera ocurrencia
fruta_eliminada = frutas.pop()  # Elimina y devuelve el último elemento
primera = frutas.pop(0)         # Elimina y devuelve el elemento en índice 0
frutas.clear()                  # Vacía la lista completa
```

### Métodos de Búsqueda y Ordenamiento
```python
numeros = [3, 1, 4, 1, 5, 9, 2, 6]

# Búsqueda
posicion = numeros.index(4)     # 2 (primera posición donde está 4)
cantidad = numeros.count(1)     # 2 (aparece 2 veces)

# Ordenamiento (modifica la lista original)
numeros.sort()                  # [1, 1, 2, 3, 4, 5, 6, 9]
numeros.sort(reverse=True)      # [9, 6, 5, 4, 3, 2, 1, 1]
numeros.reverse()               # Invierte el orden actual

# Copia
copia = numeros.copy()          # Crea una copia independiente
# también: copia = numeros[:]

# Ejemplo práctico
estudiantes = ["Carlos", "Ana", "María", "Juan"]
estudiantes.sort()
print(f"Orden alfabético: {estudiantes}")

calificaciones = [85, 92, 78, 96, 88]
promedio = sum(calificaciones) / len(calificaciones)
print(f"Promedio: {promedio}")
```

---

## Métodos de Diccionarios (`dict`)

### Métodos de Acceso y Consulta
```python
persona = {"nombre": "Ana", "edad": 25, "ciudad": "Madrid"}

# Acceso seguro
nombre = persona.get("nombre")          # "Ana"
trabajo = persona.get("trabajo", "N/A") # "N/A" (valor por defecto)

# Obtener claves, valores e items
claves = persona.keys()     # dict_keys(['nombre', 'edad', 'ciudad'])
valores = persona.values()  # dict_values(['Ana', 25, 'Madrid'])
items = persona.items()     # dict_items([('nombre', 'Ana'), ('edad', 25), ('ciudad', 'Madrid')])

# Convertir a listas
list(persona.keys())        # ['nombre', 'edad', 'ciudad']
list(persona.values())      # ['Ana', 25, 'Madrid']
```

### Métodos de Modificación
```python
persona = {"nombre": "Ana", "edad": 25}

# Actualizar
persona.update({"ciudad": "Madrid", "edad": 26})  # Agrega/actualiza múltiples
persona.update([("trabajo", "Ingeniera")])        # Desde lista de tuplas

# Eliminar
edad = persona.pop("edad")          # Elimina y devuelve el valor
ultimo = persona.popitem()          # Elimina y devuelve el último item
persona.clear()                     # Vacía el diccionario

# Copia
copia = persona.copy()              # Copia superficial

# Crear diccionario con claves predefinidas
claves = ["a", "b", "c"]
nuevo_dict = dict.fromkeys(claves, 0)  # {'a': 0, 'b': 0, 'c': 0}

# Ejemplo práctico
inventario = {"manzanas": 50, "bananas": 30, "naranjas": 25}
print(f"Productos disponibles: {list(inventario.keys())}")
print(f"Total de frutas: {sum(inventario.values())}")

# Actualizar inventario
inventario.update({"manzanas": 45, "peras": 20})
print(f"Inventario actualizado: {inventario}")
```

---

## Métodos de Conjuntos (`set`)

### Métodos de Modificación
```python
colores = {"rojo", "verde", "azul"}

# Agregar elementos
colores.add("amarillo")             # {'rojo', 'verde', 'azul', 'amarillo'}
colores.update(["negro", "blanco"]) # Agrega múltiples elementos

# Eliminar elementos
colores.remove("rojo")              # Elimina (error si no existe)
colores.discard("rosa")             # Elimina sin error si no existe
elemento = colores.pop()            # Elimina y devuelve un elemento aleatorio
colores.clear()                     # Vacía el conjunto
```

### Operaciones de Conjuntos
```python
set1 = {1, 2, 3, 4, 5}
set2 = {4, 5, 6, 7, 8}

# Operaciones matemáticas
union = set1.union(set2)                    # {1, 2, 3, 4, 5, 6, 7, 8}
interseccion = set1.intersection(set2)      # {4, 5}
diferencia = set1.difference(set2)          # {1, 2, 3}
sim_diferencia = set1.symmetric_difference(set2)  # {1, 2, 3, 6, 7, 8}

# Verificaciones
set1.issubset(set2)         # False ¿set1 está contenido en set2?
set1.issuperset(set2)       # False ¿set1 contiene a set2?
set1.isdisjoint(set2)       # False ¿no tienen elementos en común?

# Copia
copia = set1.copy()

# Ejemplo práctico
estudiantes_matematicas = {"Ana", "Carlos", "María", "Juan"}
estudiantes_fisica = {"Carlos", "María", "Pedro", "Sofía"}

ambas_materias = estudiantes_matematicas.intersection(estudiantes_fisica)
print(f"Estudiantes en ambas materias: {ambas_materias}")

solo_matematicas = estudiantes_matematicas.difference(estudiantes_fisica)
print(f"Solo en matemáticas: {solo_matematicas}")
```

---

## Métodos de NumPy Arrays

### Propiedades y Información
```python
import numpy as np

arr = np.array([[1, 2, 3], [4, 5, 6]])

# Propiedades básicas
arr.shape           # (2, 3) - dimensiones
arr.size            # 6 - total de elementos
arr.ndim            # 2 - número de dimensiones
arr.dtype           # dtype('int64') - tipo de datos
```

### Métodos de Transformación
```python
import numpy as np

arr = np.array([[1, 2, 3], [4, 5, 6]])

# Cambio de forma
arr.reshape(3, 2)       # [[1, 2], [3, 4], [5, 6]]
arr.flatten()           # [1, 2, 3, 4, 5, 6] (1D)
arr.ravel()             # [1, 2, 3, 4, 5, 6] (1D, vista si es posible)
arr.transpose()         # [[1, 4], [2, 5], [3, 6]]
arr.T                   # Atajo para transpose()

# Ejemplos
matriz = np.array([[1, 2], [3, 4], [5, 6]])
print(f"Original: {matriz.shape}")      # (3, 2)
print(f"Transpuesta: {matriz.T.shape}") # (2, 3)
```

### Métodos Matemáticos
```python
import numpy as np

arr = np.array([1, 2, 3, 4, 5])

# Estadísticas
arr.sum()           # 15
arr.mean()          # 3.0
arr.std()           # 1.58... (desviación estándar)
arr.var()           # 2.5 (varianza)
arr.min()           # 1
arr.max()           # 5
arr.argmin()        # 0 (índice del mínimo)
arr.argmax()        # 4 (índice del máximo)

# Arrays 2D
matriz = np.array([[1, 2, 3], [4, 5, 6]])
matriz.sum()            # 21 (suma total)
matriz.sum(axis=0)      # [5, 7, 9] (suma por columnas)
matriz.sum(axis=1)      # [6, 15] (suma por filas)
matriz.mean(axis=0)     # [2.5, 3.5, 4.5] (promedio por columnas)
```

### Métodos de Ordenamiento y Búsqueda
```python
import numpy as np

arr = np.array([3, 1, 4, 1, 5, 9, 2, 6])

# Ordenamiento
arr.sort()              # Modifica el array original
sorted_arr = np.sort(arr)  # Devuelve copia ordenada
indices = np.argsort(arr)  # Índices que ordenarían el array

# Búsqueda
condicion = arr > 3
resultado = arr[condicion]  # Elementos que cumplen la condición

# Ejemplo práctico
temperaturas = np.array([23, 25, 21, 28, 24, 26, 22])
print(f"Temperatura promedio: {temperaturas.mean():.1f}°C")
print(f"Temperatura máxima: {temperaturas.max()}°C")
print(f"Días con más de 24°C: {(temperaturas > 24).sum()}")

# Análisis de datos
ventas = np.array([[100, 150, 200], [120, 180, 220], [110, 160, 190]])
print(f"Ventas totales: {ventas.sum()}")
print(f"Ventas por mes: {ventas.sum(axis=0)}")  # Suma por columnas
print(f"Ventas por vendedor: {ventas.sum(axis=1)}")  # Suma por filas
```

### Métodos de Copia y Conversión
```python
import numpy as np

arr = np.array([1, 2, 3, 4, 5])

# Copias
vista = arr.view()          # Vista (comparte datos)
copia = arr.copy()          # Copia independiente

# Conversiones
lista = arr.tolist()        # Convierte a lista de Python
string_arr = arr.astype(str)  # Cambia tipo de datos

# Ejemplo
numeros_float = np.array([1.7, 2.3, 3.9, 4.1])
numeros_int = numeros_float.astype(int)  # [1, 2, 3, 4]
print(f"Originales: {numeros_float}")
print(f"Convertidos: {numeros_int}")
```

---

## Resumen de Métodos Más Utilizados

### String: 
`.lower()`, `.upper()`, `.strip()`, `.split()`, `.join()`, `.replace()`, `.find()`, `.startswith()`, `.endswith()`

### List: 
`.append()`, `.remove()`, `.pop()`, `.insert()`, `.sort()`, `.reverse()`, `.extend()`, `.index()`, `.count()`

### Dict: 
`.get()`, `.keys()`, `.values()`, `.items()`, `.update()`, `.pop()`, `.clear()`

### Set: 
`.add()`, `.remove()`, `.discard()`, `.union()`, `.intersection()`, `.difference()`

### NumPy Array: 
`.shape`, `.reshape()`, `.sum()`, `.mean()`, `.max()`, `.min()`, `.sort()`, `.flatten()`, `.transpose()`