@echo off && setlocal enabledelayedexpansion && chcp 65001>nul

rem Set this batch's folder as current folder (in case of drag'n drop use)
set "cd=%~dp0"

rem Set PATH with tools
set "PATH=!PATH!;%cd%\inkscape\bin"
set "PATH=!PATH!;%cd%\latex"
set "PATH=!PATH!;%cd%\miktex\texmfs\install\miktex\bin\x64"
set "PATH=!PATH!;%cd%\nvm"
set "PATH=!PATH!;%cd%\nvm\v16.13.0"
set "PATH=!PATH!;%cd%\pandoc"
set "PATH=!PATH!;%cd%\perl\perl\bin"
set "PATH=!PATH!;%cd%\tools\ditaa"
set "PATH=!PATH!;%cd%\tools\msc-generator"

rem Clean PATH
set "PATH=!PATH:\\=\!"
set "PATH=!PATH:;;=;!"
set "PATH=!PATH: ;=;!"
set "PATH=!PATH:; =;!"
if "!PATH:~-1!"==";" set "PATH=!PATH:~0,-1!"

rem Open command line windows
start "" /d "%cd%\nvm" "cmd"
