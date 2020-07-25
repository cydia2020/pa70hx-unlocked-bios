@echo off

set BIOSROM PA70Hx.16

if '%1' == '' then
goto flash
endif

set BIOSROM %1

:flash
# Check the file exist or not.
if not exist %BIOSROM% then
 echo The %BIOSROM% doesn't exist.
 goto end
endif

fpt -f %BIOSROM% -l 2097152 -y

FLASH.nsh


