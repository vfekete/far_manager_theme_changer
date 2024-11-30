@echo off

if "%~1"=="" (
    echo USAGE: chnage_theme.bat [list] ^<theme_name^>
    echo PARAMETERS:
    echo   list              ^(dir^)list all available themes currently installed
    echo   ^<theme_name^>    name of the theme from listi^ng (including the extension^)
    exit /B
)

set FAR_MANAGER_ROOT_DIR=%APPDATA%\..\Local\Far Manager x64
set FAR_MANAGER_THEMES_DIR=%FAR_MANAGER_ROOT_DIR%\Addons\Colors\Interface
set FAR_MANAGER_EXECUTABLE=%FAR_MANAGER_ROOT_DIR%\Far.exe

if "%~1"=="list" (
  dir /B "%FAR_MANAGER_THEMES_DIR%\*.farconfig"
) ELSE ( 
 call "%FAR_MANAGER_EXECUTABLE%" /import "%FAR_MANAGER_THEMES_DIR%\%1"
)
