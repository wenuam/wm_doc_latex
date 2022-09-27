@echo off

rem Set this batch's folder as current folder (in case of drag'n drop use)
set "cd=%~dp0"

rem Remove any previous link (will break other installation, if any)
rmdir /q "%ProgramW6432%\nodejs" 1>nul

rem Restore mirrors to their default url
nvm node_mirror
nvm npm_mirror

rem Install LTS version
nvm install lts

rem Use LTS version
nvm use lts

rem Create link to LTS version 
for /f "tokens=1* delims=:" %%i in ('dir "v*" /a:d /b /o:n') do (
	rem echo "%%i"
	start "" /d "%ProgramW6432%" "mklink /d /j nodejs ^"%cd%\%%i^""
)

pause
