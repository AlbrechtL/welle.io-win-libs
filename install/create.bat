echo off

rem get current date
for /f "tokens=2 delims==" %%G in ('wmic os get localdatetime /value') do set datetime=%%G
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set current_date= %year%%month%%day%

C:\Qt\Tools\QtInstallerFramework\2.0\bin\binarycreator.exe --offline-only --config config/config.xml --packages packages %current_date%_welle-io-setup.exe

pause