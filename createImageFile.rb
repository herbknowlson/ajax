#---------------------------------------------------
#
# This program reads a directory containing image files
# and writes the file names, formated as HTML to a file
# called imageNames.txt so it can used by a web page with
# Ajax code.
#----------------------------------------------------
#
results = "imageNames.txt"
currentDir = "K:/System2/System/Ajax/"
#
#folderToShow = "Alaska"
folderToShow = "Family"
#folderToShow = "Ward90"
#imageSource = './drop images here/' + folderToShow + '/*.{jpg,png,gif}'

show = "03*"
#show = "650*"
#show = "700*"
imageSource = './drop images here/Index/' + show + '/*.{jpg,png,gif}'


Dir.chdir(currentDir)
files = Dir[imageSource].entries
puts files.count
files.each {|x| print x, "\n" }
open(results,'w') { |f| files.each {|x| f << "'<img src = " + '"' + x + '"' + ">'" + "\n" }}

puts ""
puts "Got here"
puts ""

open(results,'r') { |f| files.each {|x| print x + "\n"}}

a = []
i = 0
open(results,'r') { |f| files.each {|x| a[i]=x, i=i+1}}

#puts a.size

a.shuffle

for e in a
  puts e
end

i = 0
#open(results,'w') { |f| files.each {|x| f << a[i], i=i+1}}

#---------------------------------------------------
# To run this program
#
# 1 - Start Command Prompt with Ruby  C:\Windows\System32\cmd.exe /E:ON /K C:\Ruby21\bin\setrbvars.bat
# 2 - cd development
# 3 - cd rubyprograms
# 4 - ruby createImageFile.rb  
#----------------------------------------------------