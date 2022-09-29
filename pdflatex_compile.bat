@echo off

rem Start directory, always the batch's folder
set "sd=%~dp0"

rem Set destination folder as current folder (start if no drag'n drop)
if "%~1"=="" (
	set "cd=%~dp0"
) else (
	set "cd=%~dp1"
)

if "%cd:~-1%"=="\" set "cd=%cd:~0,-1%"

rem Enforce current working directory (i.e. for Total Commander, if placed into a menu bar)
cd /d "%cd%"

rem Set PATH with tools
set "PATH=%PATH%;%sd%\inkscape\bin;%sd%\latex;%sd%\miktex\texmfs\install\miktex\bin\x64;%sd%\nvm;%sd%\nvm\v16.13.0;%sd%\pandoc;%sd%\perl\perl\bin;%sd%\tools\ditaa;%sd%\tools\msc-generator;"
set "PATH=%PATH:\\=\%"
set "PATH=%PATH:;;=;%"
set "PATH=%PATH: ;=;%"
set "PATH=%PATH:; =;%"

rem Generate PDF file (those arguments allows the magic to happen)
pdflatex -shell-escape -synctex=1 -interaction=nonstopmode --extra-mem-top=10000000  -file-line-error -max-print-line=8190 "%~1"
