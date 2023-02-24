@echo off

SET /P AREYOUSURE=Are you want to backUp flash-drive (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

(
echo List Disk
) | diskpart

set /p id=Enter flash drive ID (check space column):
SET /P AREYOUSURE=Are you sure the CHANGES ARE IRREVERSIBLE(Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO ENDD

(
echo Select Disk %id%
echo Clean
echo Create Partition Primary
echo Active
echo Format fs=fat32 quick
echo Assign
) | diskpart

echo All Done!

:ENDD

echo Goodbye!

:END

pause