@echo off

IF NOT EXIST bin\irssi.exe EXIT
IF NOT EXIST home mkdir home
IF NOT EXIST home\%USERNAME% mkdir home\%USERNAME%
IF NOT EXIST home\%USERNAME%\Irssi mkdir home\%USERNAME%\Irssi

set CONFIG_FILE=/home/%USERNAME%/Irssi

set TERMINFO_DIRS=terminfo
bin\mintty.exe -t irssi -i irssi.ico -e bin\irssi.exe --home=%CONFIG_FILE%
