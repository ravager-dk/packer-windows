:: Ensure C:\Chocolatey\bin is on the path
set /p PATH=%PATH%;C:\ProgramData\chocolatey\
echo %PATH%

:: Install all the things; for example:
choco install /y openconnect-gui
choco install /y citrix-workspace
