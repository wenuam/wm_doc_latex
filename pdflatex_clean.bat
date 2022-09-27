@echo off

rem Set destination folder as current folder (current if no drag'n drop)
if "%~1"=="" (
	set "cd=%~dp0"
) else (
	set "cd=%~dp1"
)

rem Remove temporary/generated file (not into subfolders, though)
del "%cd%*.acn"
del "%cd%*.aux"
del "%cd%*.bcf"
del "%cd%*.bbl"
del "%cd%*.blg"
del "%cd%*.docxexit"
del "%cd%*.glo"
del "%cd%*.idx"
del "%cd%*.ist"
del "%cd%*.log"
del "%cd%*.log"
del "%cd%*.lot"
del "%cd%*.out"
del "%cd%*.pdf"
del "%cd%*.run.xml"
del "%cd%*.synctex.gz"
del "%cd%*.tdo"
del "%cd%*.toc"
