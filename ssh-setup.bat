@echo off
ssh-agent | grep -v echo | sed -e "s/^/@set /" | sed -e "s/;.*$//" - > call.cmd
call call.cmd
del call.cmd
ssh-add "C:\Users\%USERNAME%\.ssh\id_rsa"
