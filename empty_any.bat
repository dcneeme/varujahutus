@echo off
echo # Creating EMPTY COB file ...
..\230\web2cob /o empty.cob /d empty
rem if errorlevel 1 goto quit1 / warningud segavad

echo Transfering to Barionet %1...
..\226\sleep 3
tftp -i %1 put empty.cob WEB1
tftp -i %1 put empty.cob WEB2
tftp -i %1 put empty.cob WEB3
tftp -i %1 put empty.cob WEB4
tftp -i %1 put empty.cob WEB5
tftp -i %1 put empty.cob WEB6
tftp -i %1 put empty.cob WEB7
 
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