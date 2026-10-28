# Laboratorio-Sistemas-Operativos
Calculadora
<img width="767" height="455" alt="image" src="https://github.com/user-attachments/assets/4090ae91-e948-493b-9d53-9926b61ea134" />
<img width="604" height="401" alt="image" src="https://github.com/user-attachments/assets/8dc964c7-48c2-42d2-bbdc-54f0c19256f2" />
<img width="767" height="506" alt="image" src="https://github.com/user-attachments/assets/c4e6d54a-320b-4e36-b316-a3eb6bec1f13" />
<img width="759" height="529" alt="image" src="https://github.com/user-attachments/assets/b64991b0-276a-49a1-bdc6-43ca118ff5b1" />

Comandos y Operadores Utilizados
SET /P y SET /A (Comandos de Asignación)
SET /P: Se utiliza para solicitar información al usuario por consola y guardarla dentro de una variable (por ejemplo, set /p opcion="...").
SET /A: Le indica al intérprete de comandos que evalúe la expresión como una operación aritmética matemática para procesar cálculos (por ejemplo, set /a suma=num1 + num2).

IF con Operadores de Relación (EQU, GTR, LSS)
Permiten realizar validaciones condicionales dentro del script. Para comparar valores numéricos en archivos BAT se emplean abreviaturas del inglés:
EQU (Equal): Comprueba si dos números son iguales.
GTR (Greater Than): Evalúa si el primer número es mayor que el segundo.
LSS (Less Than): Evalúa si el primer número es menor que el segundo.

GOTO y Etiquetas (:ETIQUETA)
El comando GOTO permite redirigir el flujo de ejecución hacia una sección específica del código definida por una etiqueta con dos puntos (como :MENÚ o :ARITMÉTICA). Esto nos permite estructurar un menú interactivo y crear bucles de repetición.

Variables de Entorno del Sistema (%USERNAME%, %DATE%, %TIME%)
Son variables reservadas por Windows que devuelven información en tiempo real sobre la sesión activa. Muestran el nombre del usuario de Windows, la fecha y la hora exacta en la que se ejecuta el programa.

Operador de Módulo (%%) y Asignaciones Compuestas (+=, -=, *=, /=)
%%:  Calcula el residuo de una división entera. Se escribe con doble símbolo (%%) en archivos BAT para evitar interferencias con la sintaxis de variables.
+=, -=, *=, /=:  Modifican y reasignan el valor de la variable en una sola instrucción combinando el cálculo aritmético con la asignación.
