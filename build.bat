@echo off
SETLOCAL

echo Checking for lint errors with Selene...
call selene ./MainModule ./Loader

if %ERRORLEVEL% NEQ 0 (
    echo Linting failed!
    exit /b %ERRORLEVEL%
)

echo Building with Rojo...
call rojo build -o PBAST.rbxm

ENDLOCAL