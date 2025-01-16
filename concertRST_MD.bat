@ECHO OFF 
ECHO Hello World
setlocal enabledelayedexpansion
FOR /r "." %%i IN (*.rst) DO (
echo %%~fi
pandoc -f rst -t gfm "%%~fi" -o "%%~dpni.md"
)
endLocal
