@ECHO OFF 
ECHO Hello World
FOR /r "." %%i IN (*.rst) DO pandoc -f rst -t markdown_github "%%~fi" -o "%%~dpni.md"