@cls
@echo off
@echo IPV4 :
@for /f "tokens=2 delims=:" %%a in ('ipconfig^|find "IPv4"') do @set ip=%%a | @echo %%a
@echo IPV6 :
@for /f "tokens=2 delims=:" %%a in ('ipconfig^|find "IPv6"') do @set ip=%%a | @echo %%a
:BREAK
@pause