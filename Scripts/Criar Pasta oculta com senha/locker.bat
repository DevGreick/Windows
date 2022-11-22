REM 🔑 Pasta que oculta e desoculta com senha 🔑
REM Altere a linha 23 inserindo a senha a sua escolha - if NOT %pass%== "Sua senha Aqui" goto FAIL
REM Para maior segurança apos a alterações converta para Exe ( Advanced Bat ) link : https://advanced-bat-exe-converter.br.uptodown.com/windows
REM Atenção aos detalhes !! se inserir a senha incorreta pode não ser mais possivel acessa-la então anote-a.

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