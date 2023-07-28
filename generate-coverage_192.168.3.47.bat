rem Generate Static Analysis Report
"C:/dottest_2022.2/dottest/dottestcli.exe" -solution "BankExample.NET.sln" -config "dottest_settings.properties" -settings "localsettings.properties" -report "build/reports/dottest/static"

rem Generate Unit Tests with Coverage Report
"C:/dottest_2022.2/dottest/dottestcli.exe" -solution "BankExample.NET.WithTests.sln" -config "builtin://Run VSTest Tests with Coverage" -settings "localsettings.properties" -report "build/reports/dottest/ut" -property dtp.url="https://192.168.3.130:8443" -publish