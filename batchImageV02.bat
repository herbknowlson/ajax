ECHO %1 %2
call C:\Ruby21\bin\setrbvars.bat
ruby createImageFileV02.rb %1 %2
cd C:\xampp\htdocs\Ajax
PAUSE