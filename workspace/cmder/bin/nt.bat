@ECHO OFF
TYPE %1 | FIND /V "" >%1.1
MOVE %1.1 %1 > NUL 2>&1
START "NOTEPAD" C:\WINDOWS\SYSTEM32\NOTEPAD.EXE %1
EXIT /B