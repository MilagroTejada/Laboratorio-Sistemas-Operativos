@echo off
title Calculadora Interactiva BAT
color 0A

:MENU
cls
echo ===================================================
echo              CALCULADORA INTERACTIVA BAT
echo ===================================================
echo Usuario actual : %USERNAME%
echo Fecha actual   : %DATE%
echo Hora actual    : %TIME%
echo ===================================================
echo 1. Operaciones Aritmeticas (Suma, Resta, Mult, Div, Modulo)
echo 2. Comparacion de Numeros (Igual, Mayor, Menor, Distinto)
echo 3. Operadores de Asignacion (+=, -=, *=, /=)
echo 4. Salir
echo ===================================================
set /p opcion="Seleccione una opcion (1-4): "

if "%opcion%"=="1" goto ARITMETICA
if "%opcion%"=="2" goto COMPARACION
if "%opcion%"=="3" goto ASIGNACION
if "%opcion%"=="4" goto SALIR

echo.
echo Opcion invalida. Intente de nuevo.
pause
goto MENU

:ARITMETICA
cls
echo ===================================================
echo               OPERACIONES ARITMETICAS
echo ===================================================
set /p num1="Ingrese el primer numero entero: "
set /p num2="Ingrese el segundo numero entero: "

if "%num2%"=="0" (
    echo.
    echo ERROR: No se puede dividir entre cero.
    pause
    goto MENU
)

set /a suma=num1 + num2
set /a resta=num1 - num2
set /a mult=num1 * num2
set /a div=num1 / num2
set /a mod=num1 %% num2

echo.
echo --- Resultados ---
echo Suma (%num1% + %num2%)         = %suma%
echo Resta (%num1% - %num2%)        = %resta%
echo Multiplicacion (%num1% * %num2%) = %mult%
echo Division (%num1% / %num2%)     = %div%
echo Residuo/Modulo (%num1% %% %num2%) = %mod%
echo.
pause
goto MENU

:COMPARACION
cls
echo ===================================================
echo               COMPARACION DE NUMEROS
echo ===================================================
set /p num1="Ingrese el primer numero entero: "
set /p num2="Ingrese el segundo numero entero: "

echo.
echo --- Resultados de la Comparacion ---

if %num1% EQU %num2% (
    echo %num1% es IGUAL a %num2%
) else (
    echo %num1% es DIFERENTE de %num2%
)

if %num1% GTR %num2% echo %num1% es MAYOR que %num2%
if %num1% LSS %num2% echo %num1% es MENOR que %num2%
if %num1% GEQ %num2% echo %num1% es MAYOR O IGUAL que %num2%
if %num1% LEQ %num2% echo %num1% es MENOR O IGUAL que %num2%

echo.
pause
goto MENU

:ASIGNACION
cls
echo ===================================================
echo              OPERADORES DE ASIGNACION
echo ===================================================
set /p num1="Ingrese el numero base (variable X): "
set /p val="Ingrese el valor a aplicar: "

if "%val%"=="0" (
    echo.
    echo ERROR: No se puede usar 0 para la asignacion.
    pause
    goto MENU
)

set /a var1=num1
set /a var1+=val

set /a var2=num1
set /a var2-=val

set /a var3=num1
set /a var3*=val

set /a var4=num1
set /a var4/=val

echo.
echo --- Resultados modificando la variable base (%num1%) ---
echo Con += (Suma asignada)        : X += %val% -^> Nuevo valor = %var1%
echo Con -= (Resta asignada)       : X -= %val% -^> Nuevo valor = %var2%
echo Con *= (Mult. asignada)       : X *= %val% -^> Nuevo valor = %var3%
echo Con /= (Div. asignada)        : X /= %val% -^> Nuevo valor = %var4%

echo.
pause
goto MENU

:SALIR
cls
echo ===================================================
echo ¡Gracias por utilizar la calculadora!
echo ===================================================
timeout /t 2 >nul
exit