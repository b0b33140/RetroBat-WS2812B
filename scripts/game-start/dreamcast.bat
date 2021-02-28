@echo off

set system=dreamcast\\

echo.%* | findstr /C:"%system%">nul && (
"C:\Program Files (x86)\Arduino\hardware\tools\avr/bin/avrdude" "-CC:\Program Files (x86)\Arduino\hardware\tools\avr/etc/avrdude.conf" -v -patmega328p -carduino -PCOM4 -b115200 -D -Uflash:w:C:\Users\Arcade\Documents\Arduino\Programmes_neopixel\dreamcast/dreamcast.ino.standard.hex:i
    exit
) || (
    exit
)