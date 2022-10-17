@echo off

rem - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
echo Recompose 'miktex' caches...
start "" /d "%~dp0miktex" "miktex-cleanup-fndb.bat"

rem - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
echo Recompose 'nvm' dependencies...

cd "nvm\v16.13.0"
if exist "node.exe.001" (
rem	if not exist "node.exe" (
		copy /y /b "node.exe.001"+"node.exe.002" "node.exe"
rem	)

	del "node.exe.001" /q 1>nul 2>nul
	del "node.exe.002" /q 1>nul 2>nul
)
cd "..\.."

cd "nvm\v16.13.0\node_modules\@mermaid-js\mermaid-cli\node_modules\puppeteer-core\.local-chromium\win64-1045629\chrome-win"
if exist "chrome.dll.001" (
rem	if not exist "chrome.dll" (
		copy /y /b "chrome.dll.001"+"chrome.dll.002"+"chrome.dll.003"+"chrome.dll.004" "chrome.dll"
rem	)

	del "chrome.dll.001" /q 1>nul 2>nul
	del "chrome.dll.002" /q 1>nul 2>nul
	del "chrome.dll.003" /q 1>nul 2>nul
	del "chrome.dll.004" /q 1>nul 2>nul
)

if exist "interactive_ui_tests.exe.001" (
rem	if not exist "interactive_ui_tests.exe" (
		copy /y /b "interactive_ui_tests.exe.001"+"interactive_ui_tests.exe.002"+"interactive_ui_tests.exe.003"+"interactive_ui_tests.exe.004" "interactive_ui_tests.exe"
rem	)

	del "interactive_ui_tests.exe.001" /q 1>nul 2>nul
	del "interactive_ui_tests.exe.002" /q 1>nul 2>nul
	del "interactive_ui_tests.exe.003" /q 1>nul 2>nul
	del "interactive_ui_tests.exe.004" /q 1>nul 2>nul
)
cd "..\..\..\..\..\..\..\..\..\.."

cd "nvm\v16.13.0\node_modules\diagrams\node_modules\electron\dist"
if exist "electron.exe.001" (
rem	if not exist "electron.exe" (
		copy /y /b "electron.exe.001"+"electron.exe.002" "electron.exe"
rem	)

	del "electron.exe.001" /q 1>nul 2>nul
	del "electron.exe.002" /q 1>nul 2>nul
)
cd "..\..\..\..\..\..\.."

rem - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
echo Recompose 'pandoc' dependencies...

cd "pandoc"
if exist "pandoc.exe.001" (
rem	if not exist "pandoc.exe" (
		copy /y /b "pandoc.exe.001"+"pandoc.exe.002"+"pandoc.exe.003" "pandoc.exe"
rem	)

	del "pandoc.exe.001" /q 1>nul 2>nul
	del "pandoc.exe.002" /q 1>nul 2>nul
	del "pandoc.exe.003" /q 1>nul 2>nul
)
cd ".."
