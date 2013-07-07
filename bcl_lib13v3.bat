echo off
echo 10.0.0.13:8080 aadressile barionet.cob web4..web5
date /t
time /t

rem using library modules

echo # arranging 9 backup files...
del main9.bas
rename main8.bas main9.bas
rename main7.bas main8.bas
rename main6.bas main7.bas
rename main5.bas main6.bas
rename main4.bas main5.bas
rename main3.bas main4.bas
rename main2.bas main3.bas
rename main1.bas main2.bas
copy main.bas main1.bas
echo done
..\226\sleep 1


echo # Tokenizing BCL...
del tokenizer.txt

rem cd BCL
rem del barione*.tok

rem cd ..


..\300\tokenizer barionet100 main.bcl -1 > tokenizer.txt
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

echo # cob file creation... 
..\300\web2cob /o barionet.cob /d BCL
..\226\sleep 2
move *.bcl BCL

rem if errorlevel 1 goto quit2 / warning segab

rem type tokenizer.txt
..\226\sleep 2

echo ..
echo # Transfering barionet.cob v3 to Barionet WEB4...
tftp -i 10.0.0.13 put barionet.cob WEB4
if errorlevel 1 goto quit3

echo "DONE OK, rebooting barionet..."

e:\Programs\wgetwin\wget.exe -o wget.log 10.0.0.13:8080/basic.cgi?R
del basic.cgi*

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
