@rem ########################################
@rem # SERVEUR MAILHOG - 29 mars 2020       #
@rem ########################################
@cls
@echo off
@set %%a= 
@set %%b=
@set X=
@set HD=
@for /f "skip=1 delims=" %%x in ('wmic os get localdatetime') do if not defined X set X=%%x
@set DATE.YEAR=%X:~0,4%
@set DATE.MONTH=%X:~4,2%
@set DATE.DAY=%X:~6,2%
@set DATE.HOUR=%X:~8,2%
@set DATE.MINUTE=%X:~10,2%
@set DATE.SECOND=%X:~12,2%
@set DATE.FRACTIONS=%X:~15,6%
@set DATE.OFFSET=%X:~21,4%
@set HD=%DATE.HOUR%-%DATE.MINUTE%-%DATE.SECOND%-%DATE.YEAR%-%DATE.MONTH%-%DATE.DAY%
@REM
@REM ************* JIM ***********************
@SET -jim-disconnect=0.2
@SET -jim-linkspeed-affect=0.1
@SET -jim-linkspeed-min=1250
@SET -jim-linkspeed-max=12500
@rem *****************************************
@c:\extraNETv1\usr\bin\mailhog.exe  -hostname=nic.loginto.me -invite-jim -jim-linkspeed-affect=0.1 -jim-linkspeed-min=1250 -jim-linkspeed-max=12500 >%LARAGON_ROOT%\log\mailhog-%HD%.txt 2>&1
