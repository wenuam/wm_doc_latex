@echo off && setlocal enabledelayedexpansion
if "%~dp0" neq "%tmp%\%guid%\" (set "guid=%~nx0.%~z0" & set "cd=%~dp0" & (if not exist "%tmp%\%~nx0.%~z0\%~nx0" (mkdir "%tmp%\%~nx0.%~z0" 2>nul & find "" /v<"%~f0" >"%tmp%\%~nx0.%~z0\%~nx0")) & call "%tmp%\%~nx0.%~z0\%~nx0" %* & rmdir /s /q "%tmp%\%~nx0.%~z0" 2>nul & exit /b) else (if "%cd:~-1%"=="\" set "cd=%cd:~0,-1%")

rem Compile a LaTeX document into PDF, by wenuam 2022

rem Set code page to utf-8 (/!\ this file MUST be in utf-8)
for /f "tokens=2 delims=:." %%x in ('chcp') do set cp=%%x
chcp 65001>nul

rem Change default helpers
set "quiet=1>nul 2>nul"
set "fquiet=/f /q 1>nul 2>nul"

rem Runner loop
set /a tries=0

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

rem Set PATH with tools
set "PATH=!PATH!;%sd%\inkscape\bin"
set "PATH=!PATH!;%sd%\latex"
set "PATH=!PATH!;%sd%\miktex\texmfs\install\miktex\bin\x64"
set "PATH=!PATH!;%sd%\nvm"
set "PATH=!PATH!;%sd%\nvm\v16.13.0"
set "PATH=!PATH!;%sd%\pandoc"
set "PATH=!PATH!;%sd%\perl\perl\bin"
set "PATH=!PATH!;%sd%\tools\ditaa"
set "PATH=!PATH!;%sd%\tools\msc-generator"

rem Clean PATH
set "PATH=!PATH:\\=\!"
set "PATH=!PATH:;;=;!"
set "PATH=!PATH: ;=;!"
set "PATH=!PATH:; =;!"
if "!PATH:~-1!"==";" set "PATH=!PATH:~0,-1!"

rem Check source file
if exist "%~1" (
	rem At least 1 run
	set /a tries+=1
	rem Check destination file presence and date
	if exist "%~dpn1.pdf" (
		xcopy /D /L /Y "%~1" "%~dpn1.pdf" | findstr /BC:"1 ">nul && set /a tries+=1
	) else (
		rem Recreate PDF from scratch, 3 runs
		set /a tries+=2
	)
)

rem Parameters
set "cpar="
set "cpar=%cpar% -shell-escape"
set "cpar=%cpar% -synctex=1"
set "cpar=%cpar% -interaction=nonstopmode"
set "cpar=%cpar% --extra-mem-top=10000000"
set "cpar=%cpar% -file-line-error"
set "cpar=%cpar% -max-print-line=8190"

:repeat
if %tries% equ 0 (goto :done)
set /a tries-=1
echo;
echo === COMPILING : %tries% @ %time% ==========================================
rem Generate PDF file (those arguments allow the magic to happen)
pdflatex %cpar% "%~1"
if %errorlevel% equ 0 (goto :repeat) else (
	echo FAILED (%errorlevel%) check the log...
	pause
)

:done
rem Restore saved code page
chcp %cp%>nul
