@echo off && setlocal enabledelayedexpansion
if "%~dp0" neq "%tmp%\%guid%\" (set "guid=%~nx0.%~z0" & set "cd=%~dp0" & (if not exist "%tmp%\%~nx0.%~z0\%~nx0" (mkdir "%tmp%\%~nx0.%~z0" 2>nul & find "" /v<"%~f0" >"%tmp%\%~nx0.%~z0\%~nx0")) & call "%tmp%\%~nx0.%~z0\%~nx0" %* & rmdir /s /q "%tmp%\%~nx0.%~z0" 2>nul & exit /b) else (if "%cd:~-1%"=="\" set "cd=%cd:~0,-1%")

rem Starter for nvm, by wenuam 2023
rem 'nvm_xx.yy.zz_run.bat' -> Launch a 'xx.yy.zz' nvm session (if installed)
rem Drag a program on the batch file to run it inside a specific nvm session

rem Set code page to utf-8 (/!\ this file MUST be in utf-8, no BOM)
for /f "tokens=2 delims=:." %%x in ('chcp') do set cp=%%x
chcp 65001>nul

rem Set "quiet" suffixes
set "quiet=1>nul 2>nul"
set "fquiet=/f /q 1>nul 2>nul"

rem Start directory, always the batch's folder (%~dp0)
set "sd=%cd%"

rem Set destination folder as current folder (start if no drag'n drop)
if "%~1" neq "" (
	set "cd=%~dp1"
)

rem Fix path ending
if "%cd:~-1%"=="\" set "cd=%cd:~0,-1%"

rem Enforce current working directory (i.e. for Total Commander, if placed into a menu bar)
cd /d "%cd%"

rem Erase version
set "NVM_VER="

rem Get nvm 'xx.yy.zz' version from batch file name ('nvm_xx.yy.zz_run.bat')
for /f "delims=_ tokens=1,2*" %%i in ("%~n0") do (
	if "%%i"=="nvm" if "%%j"=="run" (
		rem Take version 'as-is'
		set "NVM_VER=%%k"
	)
)

rem If nvm folder found
if exist "%sd%\v!NVM_VER!" (
	echo NVM version !NVM_VER! found in "%sd%"

	rem Find path of 'node.exe' (last of list if multiple)
	for /f %%u in ('dir /b /s node.exe') do set "vexe=%%~dpu"
	if "!vexe:~-1!"=="\" set "vexe=!vexe:~0,-1!"
REM	echo Found node.exe at "!vexe!"

	set "NVM_DIR=%sd%"
	set "NVM_HOME=%sd%"
	set "NVM_SYMLINK=!vexe!"
REM	set "NVM_SYMLINK=%ProgramW6432%\nodejs"

	rem Set PATH (nvm + node.exe)
	set "PATH=!PATH!;!NVM_HOME!"
	set "PATH=!PATH!;!NVM_SYMLINK!"

	rem Clean PATH
	set "PATH=!PATH:\\=\!"
	set "PATH=!PATH:;;=;!"
	set "PATH=!PATH: ;=;!"
	set "PATH=!PATH:; =;!"
	if "!PATH:~-1!"==";" set "PATH=!PATH:~0,-1!"

	rem Launch the right alternative
	if not "%~1" == "" (
		echo Executing parameters...
REM		echo "%*"
		start "" /d "%cd%" "%*"
	) else (
		echo Opening command line windows...
		start "" /d "%sd%" "cmd"
	)
) else (
	echo NVM version !NVM_VER! not found in "%sd%"
)

rem Restore code page
chcp %cp%>nul
