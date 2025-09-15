@echo off

echo Updating the package database...

".\texmfs\install\miktex\bin\x64\initexmf.exe" -u
rem ".\texmfs\install\miktex\bin\x64\initexmf.exe" --admin -u

echo Refreshing file name database...
echo Refreshing font map files...

".\texmfs\install\miktex\bin\x64\initexmf.exe" --mkmaps
