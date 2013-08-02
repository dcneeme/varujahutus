echo off
date /t
time /t

echo # Transfering cob files to Barionet...
rem tftp -i %1 PUT file WEBx

echo web1..3 (195k max)
tftp -i %1 put barionetweb.cob WEB1

echo web4..5 (130k max)
tftp -i %1 put barionet.cob WEB4

rem echo web6  (65k max)
rem tftp -i %1 put bnrescue.cob WEB6

echo web7 (65k max)
tftp -i %1 put ajax.cob WEB7

rem use for barionet 100 only
