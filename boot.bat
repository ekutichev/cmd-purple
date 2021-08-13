@echo off
cls
echo Checking the system..
if not exist ".system\etc\config.ini" (if exist ".system\safe\etc\config.ini" (move .system\safe\etc\config.ini .system\etc\config.ini && echo The system was restored from the last save. && echo Restored: && echo etc\config.ini) else (echo The ".system\etc\config.ini" file was not found. && echo The system was damaged or deleted. && pause && exit))
if not exist ".system\libs\nhcolor.exe" (if exist ".system\safe\libs\nhcolor.exe" (move .system\safe\libs\nhcolor.exe .system\libs\nhcolor.exe && echo The system was restored from the last save. && echo Restored: && echo libs\nhcolor.exe) else (echo The ".system\libs\nhcolor.exe" file was not found. && echo The system was damaged or deleted. && pause && exit))
if not exist ".system\libs\sleep.exe" (if exist ".system\safe\libs\sleep.exe" (move .system\safe\libs\sleep.exe .system\libs\sleep.exe && echo The system was restored from the last save. && echo Restored: && echo libs\sleep.exe) else (echo The ".system\libs\sleep.exe" file was not found. && echo The system was damaged or deleted. && pause && exit))
echo Loading..
call .system\purple.bat