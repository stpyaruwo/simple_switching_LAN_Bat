@echo off

:LOOP

Set /P sw="����LAN�̗L����:M ���[�J��LAN�̗L����:L Status�̕\��S (M/L/S):"

if "%sw%" == "M" (
  netsh int set int "���[�J���@�G���A�ڑ�" disable
  netsh int set int "���C�����X�@�l�b�g���[�N�ڑ�" enable
  echo "����LAN��L���ɂ��܂���"
  pause
  exit /b
)ELSE IF "%sw%" = "L" (
  netsh int set int "���[�J���@�G���A�ڑ�" enable
  netsh int set int "���C�����X�@�l�b�g���[�N�ڑ�" disable
  echo "����LAN��L���ɂ��܂���"
  pause
  exit /b
)ELSE IF "%sw%" = "S"(
  netsh int show interface
)ELSE(
  echo "�ύX�͍s���܂���ł���"
  pause
  exit /b
)

goto :LOOP
exit /b 0
