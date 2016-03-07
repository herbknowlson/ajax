ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby createImageFileV03.rb %1 %2
cd E:\xampp\htdocs\Ajax
PAUSE