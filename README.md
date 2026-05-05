# Puerto_Post1_U8
# Laboratorio de Instrucciones de Cadenas en Ensamblador

## Descripción general
En esta práctica se exploró el uso de instrucciones especializadas para el manejo de cadenas en lenguaje ensamblador. Estas instrucciones permiten realizar operaciones eficientes sobre bloques de memoria, optimizando tareas como copia, búsqueda y comparación de datos.

## Instrucciones empleadas
Se trabajó con las siguientes instrucciones orientadas a cadenas:

- `REP MOVSB / MOVSW` → utilizadas para copiar bloques de memoria byte a byte o palabra a palabra  
- `REPNE SCASB` → empleada para buscar un valor específico dentro de una secuencia de datos  
- `REPE CMPSB` → permite comparar dos cadenas de memoria mientras sean iguales  

Estas instrucciones hacen uso de prefijos de repetición que automatizan iteraciones basadas en el registro contador.

## Programas desarrollados
Durante el laboratorio se implementaron distintos programas para aplicar los conceptos:

- `post1.asm` → copia de bloques de memoria  
- `post1c.asm` → búsqueda de elementos dentro de una cadena  
- `post1d.asm` → comparación entre cadenas  

Cada uno enfocado en demostrar el comportamiento de una instrucción específica.

## Conceptos clave
Para el correcto funcionamiento de estas instrucciones se utilizaron los siguientes registros y elementos:

- **SI (Source Index)**: apunta a la fuente de datos  
- **DI (Destination Index)**: apunta al destino de los datos  
- **CX (Count Register)**: actúa como contador en las repeticiones  
- **DF (Direction Flag)**: determina si el recorrido de memoria es incremental o decremental  
- **Segmentos DS y ES**: definen las áreas de memoria origen y destino  

## Conclusión
El laboratorio permitió comprender cómo las instrucciones de cadenas simplifican la manipulación de datos en memoria. Además, se reforzó el uso de registros y banderas clave para controlar el flujo de estas operaciones, logrando una programación más eficiente a bajo nivel.
