@echo off
echo # Creating Web COB file...
..\226\web2cob /o barionetweb.cob /d stuff
rem if errorlevel 1 goto quit1 / warningud segavad

echo # Transfering to Barionet...
tftp -i 10.0.0.13 put barionetweb.cob WEB1
if errorlevel 1 goto quit2

echo "DONE OK"
..\226\sleep 3
goto end

:quit1
echo "web2cob FAILURE"
..\226\sleep 3
goto end

:quit2
echo "file transfer FAILURE"
..\226\sleep 3

:end