@echo off
REM - ***********************************************************
REM - init.cmd - Eric McConkey 2014 & Kyle Weller 2015
REM - 
REM - This script will download and execute the latest version
REM - of cleartmp from github
REM - ***********************************************************

setlocal enableextensions
%~d0
cd %~p0
echo Getting the latest version of cleartmp
wget -O master.zip --no-check-certificate "https://github.com/ion-storm/cleartmp/archive/master.zip"
7za x master.zip
copy cleartmp-master\* .
rmdir /s /q cleartmp-master
del master.zip
echo Running cleartmp
cleartmp.cmd
