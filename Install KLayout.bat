@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

:: Check for administrative privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrative privileges confirmed.
) else (
    echo This script requires administrative privileges.
    echo Please run it as an administrator.
    exit /b 1
)

:: Install KLayout using Chocolatey
echo Installing KLayout...
choco install klayout

:: Check if the installation was successful
if %errorLevel% == 0 (
    echo KLayout installed successfully.
) else (
    echo Failed to install KLayout.
    exit /b 1
)

echo Script completed.
endlocal
