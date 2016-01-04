@echo off

pushd %0\..
cls

if exist %HOMEPATH%"\.vimrc"    ( del %HOMEPATH%"\.vimrc" )
if exist %HOMEPATH%"\.gvimrc"   ( del %HOMEPATH%"\.gvimrc" )
if exist %HOMEPATH%"\.bundlerc" ( del %HOMEPATH%"\.bundlerc" )

mklink %HOMEPATH%"\.vimrc"    %0\.."\_vimrc"
mklink %HOMEPATH%"\.gvimrc"   %0\.."\_gvimrc"
mklink %HOMEPATH%"\.bundlerc" %0\.."\_bundlerc"

rem NeoBundle�f�B���N�g���̍쐬
if exist "%HOMEPATH%\.vim\bundle\" (
  rem �f�B���N�g���͑���
) else (
  mkdir %HOMEPATH%\.vim\bundle
)

rem �e���|�����f�B���N�g���̍쐬
if exist "%HOMEPATH%\.temp\vim\" (
  rem �f�B���N�g���͑���
) else (
  mkdir %HOMEPATH%\.temp\vim
)

pause
exit
