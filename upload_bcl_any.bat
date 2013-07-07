echo off
date /t
time /t

echo # Transfering cob files to Barionet...
rem tftp -i %1 PUT 
tftp -i %1 put barionet.cob WEB4

rem bn50 web1 on teistsuguse sisuga
