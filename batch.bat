REM 
REM Note: Use a windows shorcut to execute this file
REM
REM Setup the Ruby environment
call C:\Ruby21\bin\setrbvars.bat
REM K:
REM cd K:/System2/System/Ajax
ruby createImageFile.rb
REM 0 for not found and 1 for found
tasklist /fi "imagename eq chrome.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "chrome.exe"
"C:\Program Files\Google\Chrome\Application\chrome.exe" --allow-file-access-from-files --new-window
