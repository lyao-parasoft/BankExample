@echo off

rem Cygwin: `cmd /c generate-coverage_192.168.3.28.bat`
rem CMD: `generate-coverage_192.168.3.28.bat`
rem Git Bash: `./generate-coverage_192.168.3.28.bat`
rem PowerShell: `.\generate-coverage_192.168.3.28.bat`

if "%OS%"=="Windows_NT" setlocal

rem The following lines are necessary for when run this on Jenkins remote agent.
set "APPDATA=C:\Users\devtest\AppData\Roaming"
set "ProgramData=C:\ProgramData"
set "USERPROFILE=C:\Users\devtest"

"D:\Programs\Parasoft\parasoft_dottest_2023.1.0\dottest\dottestcli.exe" -solution "BankExample.NET.WithTests.sln" -config "builtin://Run VSTest Tests with Coverage" -settings "localsettings.properties" -report "build/reports/dottest/ut"

if "%OS%"=="Windows_NT" endlocal
