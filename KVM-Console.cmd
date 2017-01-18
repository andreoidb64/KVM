@echo off
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: file: KVM-Console.cmd
:: auth: andreoidb64
:: date: 20170118
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set KVMADDR=192.168.1.201
set KVMUSER=kvmadmin

echo.
set /P KVMADDR = KVM Server IP [%KVMADDR%]? 
set /P KVMUSER = KVM User Name [%KVMUSER%]? 
start "Xming server" /B "%ProgramFiles(x86)%\Xming\Xming.exe" :0 -clipboard -multiwindow
start "X Window remote connection" "%ProgramFiles(x86)%\Putty\PLINK.EXE" -X %KVMUSER%@%KVMADDR% virt-manager
::pause
exit /b