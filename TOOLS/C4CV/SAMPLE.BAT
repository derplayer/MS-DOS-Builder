ECHO OFF
CLS
RESPOND 
IF ERRORLEVEL 66 GOTO MEMOK
ECHO The sample session requires approximately 266K of free
ECHO memory. You don't have enough. If you have resident programs
ECHO you may want to remove them and try again.
ECHO  
GOTO EXIT
:MEMOK
RESPOND 
IF ERRORLEVEL 2 GOTO NEXTD
ECHO The CodeView (TM) debugger requires DOS Version 2.0 or
ECHO higher. You must update DOS before running the session.
ECHO  
GOTO EXIT
:NEXTD
IF NOT ERRORLEVEL 4 GOTO DOSOK
ECHO You have Version 4.0 or higher of DOS. The CodeView (TM)
ECHO debugger has not been tested with these versions. If you
ECHO have trouble with the session, it may be due to DOS
ECHO incompatibility.
ECHO  
PAUSE
:DOSOK
CLS
TYPE S1.@@@ 
RESPOND ICN
CLS
IF ERRORLEVEL 78 GOTO NOWAY
IF ERRORLEVEL 73 ADAPT N N N
IF ERRORLEVEL 67 GOTO CHOOSE
:NOWAY
TYPE S14.@@@
RESPOND YN
ECHO  
IF NOT ERRORLEVEL 89 GOTO EXIT
COPY CODEVIEW.DOC PRN
ECHO  
GOTO EXIT
:CHOOSE
TYPE S2.@@@
RESPOND YN
CLS
IF ERRORLEVEL 89 ADAPT N N N /D
ADAPT N N N /I
:EXIT
ECHO OFF

