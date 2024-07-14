@if (@CodeSection == @Batch) @then
@echo off
SET SendKeys=CScript //nologo //E:JScript "%~F0"

:att
REM INICIO DE ATUALIZACAO AUTOMATICA


ECHO.
ECHO.
ECHO                          ATUALIZANDO... AGUARDE...
ECHO.
ECHO.
REM ATT DE ETIQUETA 3.1.15

start "" "J:\ALMOXARIFADO\GERAL\Etiquetas\BASE\Etiqueta Geradores\02. Formulario Modulo Etiqueta (NAO ALTERAR).xlsm" > nul

timeout 6 /nobreak >nul
%Sendkeys% "^{b}"
timeout 2 /nobreak >nul
taskkill /IM excel.exe

REM FIM DE ATT ETIQUETA 3.1.15

ECHO.
ECHO.
ECHO                          ATUALIZACAO FINALIZADA
ECHO.
ECHO.
PAUSE


:menuprincipal
cls

echo                                    ===================
echo                                    * DCBM DataCenter *
echo                                    ===================
echo.
echo.
echo                                SELECIONE O TIPO DE ETIQUETA.
echo.
echo.
echo                                     MENU DE OPCOES
echo                         =========================================
echo                         * [1] ETIQUETA DE SOLICITACAO 		*
echo                         * [2] ETIQUETA DE ESTOQUE		*
echo                         * [3] SAIR				*
echo                         =========================================
echo.
echo.

set /p opcao=Digite a opcao desejada: 

if "%opcao%" == "1" goto menuetiquetapedido
if "%opcao%" == "2" goto ETIQUETA*ESTOQUE
if "%opcao%" == "3" goto fim






:menuetiquetapedido
cls

echo                                    ===================
echo                                    * DCBM DataCenter *
echo                                    ===================
echo.
echo.
echo                                ** SELECIONE UMA OPCAO **
echo.
echo.
echo                                   MENU DE OPCOES
echo                         ==================================
echo                         * [1] ABRIR GERADOR DE ETIQUETAS *
echo                         * [2] PERSONALIZAR UMA ETIQUETA  *
echo                         * [3] ATUALIZAR DADOS            *
echo                         * [4] VOLTAR                     *
echo                         * [5] SAIR                       *
echo                         ==================================
echo.
echo.

set /p opcao=Digite a opcao desejada: 

if "%opcao%" == "1" goto opep1
if "%opcao%" == "2" goto opep2
if "%opcao%" == "3" goto opep3
if "%opcao%" == "4" goto opep4
if "%opcao%" == "5" goto opep5

:opep1
start "" "J:\ALMOXARIFADO\GERAL\Etiquetas\BASE\Etiqueta Geradores\03. MALA DIRETA DE ETIQUETAS.docx"
echo.
echo.
echo                         GERADOR DE ETIQUETA ABERTO!
MSG * NAO EDITE O ARQUIVO, APENAS ENTRE NA ABA DE CORRESPONDENCIAS = CONCLUIR E MESCLAR = EDITAR DOCUMENTOS INDIVIDUAIS = INSIRA A OPCAO (DE: ) E DIGITE A QUANTIDADE DE ETIQUETAS NO SEGUNDO CAMPO
MSG * NAO SALVE ESSE DOCUMENTO
echo.
echo.
PAUSE
goto menuetiquetapedido

:opep2
start "" "J:\ALMOXARIFADO\GERAL\Etiquetas\BASE\Etiqueta Geradores\ETIQUETA PERSONALIZAVEL.xlsm"
PAUSE
goto menuetiquetapedido

:opep3
goto att
PAUSE
goto menuetiquetapedido

:opep4
goto menuprincipal

:opep5
goto fim





:ETIQUETA*ESTOQUE
cls

echo                                    ===================
echo                                    * DCBM DataCenter *
echo                                    ===================
echo.
echo.
echo                                SELECIONE UMA OPCAO ABAIXO.
echo.
echo.
echo                                   MENU DE OPCOES
echo                         ================================================
echo                         * [1] ABRIR GERADOR DE ETIQUETAS PARA ESTOQUE  *
echo                         * [2] VOLTAR                                   *
echo                         * [3] SAIR                                     *
echo                         ================================================
echo.
echo.

set /p opcao=Digite a opcao desejada: 

if "%opcao%" == "1" goto OPEE1
if "%opcao%" == "2" goto OPEE2
if "%opcao%" == "3" goto OPEE3

:OPEE1
start "" "J:\ALMOXARIFADO\GERAL\Etiquetas\BASE\ETIQUETA PARA ESTOQUE.xlsm" > nul
MSG * NAO SALVE ESSE DOCUMENTO !
echo.
echo.
echo                         OPERACAO REALIZADA COM SUCESSO!
echo.
echo.
PAUSE
goto menuprincipal

:OPEE2
goto menuprincipal

:OPEE3
goto fim



:fim
echo.
echo OBRIGADO. 
echo SISTEMA CRIADO POR: LEONARDO TEIXEIRA
echo Contato: (11) 99637-1259
echo versao atual v1.2
echo.
echo Precione qualquer tecla para encerrar...
pause > nul




GOTO :EOF
@end
// JScript section
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));0