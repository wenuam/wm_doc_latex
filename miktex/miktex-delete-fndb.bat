@echo off

rem Change default helpers
set "quiet=1>nul 2>nul"
set "fquiet=/f /q 1>nul 2>nul"

echo Fix file name database... ^(because absolute paths^)

del ".\texmfs\config\miktex\data\le\*.*" %fquiet%
del ".\texmfs\data\miktex\data\le\*.*" %fquiet%
del ".\texmfs\install\miktex\data\le\*.*" %fquiet%
