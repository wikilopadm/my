@echo off
@alias cport `netstat -fbov|grep 80`
@prompt `%@exec[@cport]$p$g`
@pause