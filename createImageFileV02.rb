#---------------------------------------------------
#
# This program reads a directory containing image files
# and writes the file names, formated as HTML to a file
# called imageNames.txt so it can used by a web page with
# Ajax code.
#----------------------------------------------------
#
v1 = ARGV[0]
v2 = ARGV[1]
v3 = ARGV[2]

puts v1
puts v2
puts v3

if v3.nil?
  v3 = v2
  puts "Got here"
end


MAX_FILES = 100
if v1 == "1"
  results = "imageNames1.txt"
end

if v1 == "2"
  results = "imageNames2.txt"
end

puts results

currentDir = "C:/xampp/htdocs/Ajax"
#
#folderToShow = "Alaska"
#folderToShow = "Family"
#folderToShow = "Ward90"
#imageSource1 = './drop images here/' + folderToShow + '/*.{jpg,png,gif}'

show1 = v2
show2 = v3
#show1 = "03*"
#show1 = "04*"
#show1 = "06 ASS"
#show = "45*"
#show1 = "67*"  # Note: This choice will show both 67 and 670
#show1 = "67 h*"  # Note: This choice will show only 67
#show2 = "70 M*"  # Note: This choice will show only 70 
#show = "600 1*"
#show2 = "600 3*"
#show3 = "600 9 ma*"
#show2 = "610 combo"
#show = "660*"
#show = "700*"
#show = "720*"
#show = "760*"
#show = "825*"
#show = "900*"
#show = "970*"
#show = "980*"
imageSource1 = './drop images here/Index/' + show1 + '/*.{jpg,png,gif}'
imageSource2 = './drop images here/Index/' + show2 + '/*.{jpg,png,gif}'
#imageSource3 = './drop images here/Index/' + show3 + '/*.{jpg,png,gif}'

Dir.chdir(currentDir)

fileNames1 = Dir[imageSource1].entries
fileNames2 = Dir[imageSource2].entries
#fileNames3 = Dir[imageSource3].entries

#
# Concatinate the files
#
fileNames1.concat fileNames2
#fileNames1.concat fileNames3


#
# Randomize the file
#
a = fileNames1
b = []
i = 0
originalSize = a.size
until  i > originalSize  
  r = rand(0..a.size)
  b[i] = a[r]
  a.delete_at(r)
  i = i + 1
  if i > MAX_FILES
    break
  end
end

b.each {|x| print x, "\n" }

#
# Write the file names to a file and print the results
#
open(results,'w') { |f| b.each {|x| f << "'<img src = " + '"' + x.to_s + '"' + ">'" + "\n" }}
#open(results,'r') { |f| b.each {|x| print x + "\n"}}



#---------------------------------------------------
# To run this program
#
# 1 - Start Command Prompt with Ruby  C:\Windows\System32\cmd.exe /E:ON /K C:\Ruby21\bin\setrbvars.bat
# 2 - cd development
# 3 - cd rubyprograms
# 4 - ruby createImageFile.rb  
#----------------------------------------------------