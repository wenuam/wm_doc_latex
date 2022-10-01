@echo off

rem Change default helpers
set "quiet=1>nul 2>nul"
set "fquiet=/f /q 1>nul 2>nul"

rem Runner loop
set /a tries=0

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

rem Check source file
if exist "%~1" (
	rem At least 1 run
	set /a tries+=1
	rem Check destination file (PDF)
	if exist "%~dpn1.pdf" (
		rem Write protect it
		attrib +r "%~dpn1.pdf"
		rem Try copy on destination file (only if more recent)
		xcopy "%~1" "%~dpn1.pdf" /d /y %quiet%
		rem Updated (more recent), 2 runs
		if errorlevel 1 (set /a tries+=1)
		rem Remove write protection
		attrib -r "%~dpn1.pdf"
	) else (
		rem Recreate PDF from scratch, 3 runs
		set /a tries+=2
	)
)

:repeat
if %tries% equ 0 (goto :eof)
set /a tries-=1
echo;
echo; %time% ===================================================================
rem Generate PDF file (those arguments allow the magic to happen)
pdflatex -shell-escape -synctex=1 -interaction=nonstopmode --extra-mem-top=10000000  -file-line-error -max-print-line=8190 "%~1"
if %errorlevel% equ 0 (goto :repeat) else (
	echo FAILED (%errorlevel%) check the log...
	pause
)
