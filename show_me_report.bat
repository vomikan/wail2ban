@Echo OFF
cd /d %~dp0

if not exist "public_html" mkdir "public_html"
powershell -executionpolicy bypass -file .\wail2ban_htmlgen.ps1

start "" .\public_html\index.html
