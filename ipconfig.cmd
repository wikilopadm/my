@rem ########################################
@rem #  IPs - 29 mars 2023                  #
@rem ########################################
@cls
@echo off
@ipconfig /all >C:\Temp\Logfiles\ipConfigTo_%date%.log
@"C:\Program Files\Notepad++\notepad++.exe" C:\Temp\Logfiles\ipConfigTo_%date%.log
