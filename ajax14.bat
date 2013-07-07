@echo off
echo # Creating COB file for WEB7...
..\230\web2cob /o ajax.cob /d ajax
rem if errorlevel 1 goto quit1 / warningud segavad

echo # Transfering to Barionet...
tftp -i 10.0.0.14 put ajax.cob WEB7
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