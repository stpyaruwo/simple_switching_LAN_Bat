@echo off

:LOOP

Set /P sw="無線LANの有効化:M ローカルLANの有効化:L Statusの表示S (M/L/S):"

if "%sw%" == "M" (
  netsh int set int "ローカル　エリア接続" disable
  netsh int set int "ワイヤレス　ネットワーク接続" enable
  echo "無線LANを有効にしました"
  pause
  exit /b
)ELSE IF "%sw%" = "L" (
  netsh int set int "ローカル　エリア接続" enable
  netsh int set int "ワイヤレス　ネットワーク接続" disable
  echo "無線LANを有効にしました"
  pause
  exit /b
)ELSE IF "%sw%" = "S"(
  netsh int show interface
)ELSE(
  echo "変更は行いませんでした"
  pause
  exit /b
)

goto :LOOP
exit /b 0
