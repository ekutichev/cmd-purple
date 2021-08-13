title [Purple] Welcome!
cls
rename .system\etc\config.ini config.bat
call .system\etc\config.bat
rename .system\etc\config.bat config.ini
echo.
type .system\welcome.txt
pause>nul|set/p = 
rd /S /Q ".temp" && exit
exit