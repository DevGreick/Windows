cls
@ECHO OFF
title Pasta Oculta 
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Privado goto MDLOCKER
:CONFIRM
echo Tem certeza de que deseja bloquear a pasta (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Escolha invalida.
goto CONFIRM
:LOCK
ren Privado "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Pasta bloqueada
goto End
:UNLOCK
echo Digite a senha para desbloquear pasta
set/p "pass=>"
if NOT %pass%== digiteasenhaaqui goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Privado
echo Folder Desbloqueado com sucesso
goto End
:FAIL
echo Senha Invalida
goto end
:MDLOCKER
md Privado
echo Privado foi criada com sucesso
goto End
:End
pause