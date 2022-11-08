@echo off && setlocal enabledelayedexpansion && chcp 65001>nul

rem Set this batch's folder as current folder (in case of drag'n drop use)
set "cd=%~dp0"

rem Set PATH with tools
set "PATH=%PATH%;%cd%\inkscape\bin;%cd%\latex;%cd%\miktex\texmfs\install\miktex\bin\x64;%cd%\nvm;%cd%\nvm\v16.13.0;%cd%\pandoc;%cd%\perl\perl\bin;%cd%\tools\ditaa;%cd%\tools\msc-generator;"
set "PATH=%PATH:\\=\%"
set "PATH=%PATH:;;=;%"
set "PATH=%PATH: ;=;%"
set "PATH=%PATH:; =;%"

rem Open command line windows
start "" /d "%cd%\nvm" "cmd"
