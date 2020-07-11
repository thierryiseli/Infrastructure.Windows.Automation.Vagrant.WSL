@ECHO OFF
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
cinst Microsoft-Windows-Subsystem-Linux -source WindowsFeatures -y
cinst vagrant --version 2.2.9 -y
cinst virtualbox -y
ECHO "Please restart and continue with ubuntu installing"