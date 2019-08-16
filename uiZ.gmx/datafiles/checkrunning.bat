SETLOCAL EnableExtensions
set EXE=%1
set EXE=%EXE:"=%
echo %str%
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto FOUND
echo Not running
EXIT /B 0
goto FIN
:FOUND
EXIT /B 1
:FIN