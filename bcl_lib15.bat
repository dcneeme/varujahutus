echo off
date /t
time /t

rem using library modules

echo # Tokenizing BCL...
del tokenizer.txt

rem cd BCL
rem del barione*.tok

rem cd ..

..\226\tokenize main.bcl -1 > tokenizer.txt
if errorlevel 1 goto quit1

type tokenizer.txt
..\226\sleep 2
copy main.tok BCL\barionet.tok
move BCL\*.bcl .
rem cd ..

echo # Creating BCL COB file WITHOUT bas file...
rem move BCL\barionet.bcl .
copy main.bas main_backup.bas
rem koopia tehakse vaid eduka tokenizationi korral!!!!

..\226\web2cob /o barionet.cob /d BCL
move *.bcl BCL

rem if errorlevel 1 goto quit2 / warning segab

rem type tokenizer.txt
..\226\sleep 2

echo ..
echo # Transfering barionet.cob to Barionet WEB4...
tftp -i 10.0.0.15 put barionet.cob WEB4
if errorlevel 1 goto quit3

echo "DONE OK"
time /t
..\226\sleep 3
goto endit


:quit1
echo "ERROR - TOKENIZER FAILURE"
cd ..
edit tokenizer.txt
rem ..\226\sleep 3
goto endit

:quit2
echo "ERROR - WEB2COB FAILURE"
..\226\sleep 3
goto endit

:quit3
echo "ERROR - FILE TRANSFER FAILURE"
..\226\sleep 3


:endit
