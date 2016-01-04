@echo off

pushd %0\..
cls

if exist %HOMEPATH%"\.vimrc"    ( del %HOMEPATH%"\.vimrc" )
if exist %HOMEPATH%"\.gvimrc"   ( del %HOMEPATH%"\.gvimrc" )
if exist %HOMEPATH%"\.bundlerc" ( del %HOMEPATH%"\.bundlerc" )

mklink %HOMEPATH%"\.vimrc"    %0\.."\_vimrc"
mklink %HOMEPATH%"\.gvimrc"   %0\.."\_gvimrc"
mklink %HOMEPATH%"\.bundlerc" %0\.."\_bundlerc"

rem NeoBundleディレクトリの作成
if exist "%HOMEPATH%\.vim\bundle\" (
  rem ディレクトリは存在
) else (
  mkdir %HOMEPATH%\.vim\bundle
)

rem テンポラリディレクトリの作成
if exist "%HOMEPATH%\.temp\vim\" (
  rem ディレクトリは存在
) else (
  mkdir %HOMEPATH%\.temp\vim
)

pause
exit
