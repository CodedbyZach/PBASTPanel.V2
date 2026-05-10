@echo off
SETLOCAL

echo Checking for lint errors with Selene...
aftman run selene ./MainModule ./Loader

if %ERRORLEVEL% NEQ 0 (
    echo Linting failed.
    exit /b %ERRORLEVEL%
)

echo Building with Rojo...
aftman run rojo build -o PBAST.rbxm

ENDLOCAL