#---------------------------------------------------
#
# This program reads a directory containing image files
# and writes the file names, formated as HTML to a file
# called imageNames.txt so it can used by a web page with
# Ajax code.
#----------------------------------------------------
#

filename = "E:/xampp/php/logs/execution.log"
target = open(filename, 'a')
time1 = Time.new
line1 = time1.strftime("%Y-%m-%d %H:%M:%S") + " - " + "createImageFileV02.rb"
target.write(line1)
target.write("\n")
target.close

index1 = ARGV[0]  # index
index2 = ARGV[1]  # another index

puts index1
puts index2

MAX_FILES = 200
results = "imageNames.txt"

puts results
type = "jpg,png,gif"



currentDir = "E:/xampp/htdocs/Ajax"
Dir.chdir(currentDir)
if v=index2.nil?
  imageSource1 = './drop images here/Index/' + index1 + '/*.{jpg,png,gif,webm}'
  #imageSource1 = './drop images here/Index/' + index1 + '/*.{gif}'
  fileNames = Dir[imageSource1].entries
else
  #imageSource1 = './drop images here/Index/' + index1 + '/*.{jpg,png,gif}'
  #imageSource2 = './drop images here/Index/' + index2 + '/*.{jpg,png,gif}'
  imageSource1 = './drop images here/Index/' + index1 + '/*.{gif}'
  imageSource2 = './drop images here/Index/' + index2 + '/*.{gif}'
  fileNames = Dir[imageSource1].entries
  fileNames2 = Dir[imageSource2].entries
  fileNames.concat fileNames2  # Concatinate the files
end  

#
# Randomize the file
#
newArray = []
i = 0
fileSize = fileNames.size
while  fileNames.size > 0
  r = rand(0..fileNames.size) # pick a random file from what remains
  newArray[i] = fileNames[r]  # add the random file to the new array
  fileNames.delete_at(r)      # remove the selected file
  i = i + 1
  if i > MAX_FILES            # don't build too big a page
    break
  end
end

newArray.each {|x| print x, "\n" }

#
# Write the file names to a file and print the results
#
open(results,'w') { |f| newArray.each {|x| f << "'<img src = " + '"' + x.to_s + '"' + ">'" + "\n" }}

#---------------------------------------------------
# To run this program
#
# 1 - Start Command Prompt with Ruby  C:\Windows\System32\cmd.exe /E:ON /K C:\Ruby21\bin\setrbvars.bat
# 2 - cd development
# 3 - cd rubyprograms
# 4 - ruby createImageFile.rb  
#----------------------------------------------------