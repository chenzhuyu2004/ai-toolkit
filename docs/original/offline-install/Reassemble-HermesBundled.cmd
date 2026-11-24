@echo off
setlocal
cd /d "%~dp0"
set OUT=HermesBundled-2026.6864.2132.0-win.msixbundle
if exist "%OUT%" (
  echo 目标文件已存在，未覆盖: %OUT%
  exit /b 1
)
if not exist "HermesBundled-2026.6864.2132.0-win.msixbundle.part01" goto missing
if not exist "HermesBundled-2026.6864.2132.0-win.msixbundle.part02" goto missing
if not exist "HermesBundled-2026.6864.2132.0-win.msixbundle.part03" goto missing
copy /b "HermesBundled-2026.6864.2132.0-win.msixbundle.part01"+"HermesBundled-2026.6864.2132.0-win.msixbundle.part02"+"HermesBundled-2026.6864.2132.0-win.msixbundle.part03" "%OUT%"
if errorlevel 1 (
  echo 拼合失败
  exit /b 1
)
echo 已用 copy /b 拼合出 %OUT%
echo 请再运行 Reassemble-HermesBundled.ps1 以外的校验：在 PowerShell 中执行
echo   Get-FileHash -Algorithm SHA256 .\%OUT%
echo 结果必须是:
echo   45FA4E1846096F8D68A3F76E2FC70F505C9DF596D86C1190811A2E64BB148E4
echo 建议直接运行 Reassemble-HermesBundled.ps1，它会拼合并自动校验。
exit /b 0
:missing
echo 缺少分片。请把 part01、part02、part03 和本脚本放在同一目录。
exit /b 1
