#---------------------------------------------------
#
# This program reads a directory containing image files
# and writes the file names, formated as HTML to a file
# called imageNames.txt so it can used by a web page with
# Ajax code.
#----------------------------------------------------
#
index1 = ARGV[0]  # index
index2 = ARGV[1]  # another index

puts index1
puts index2

MAX_FILES = 100
results = "imageNames.txt"

puts results
type = "jpg,png,gif"

currentDir = "C:/xampp/htdocs/Ajax"
Dir.chdir(currentDir)
if v=index2.nil?
  imageSource1 = 'C:/xampp/htdocs/img/movies/' + index1 + '/*.{jpg,png,gif,webm}'
  #imageSource1 = './drop images here/Index/' + index1 + '/*.{jpg,png,gif,webm}'
  #imageSource1 = './drop images here/Index/' + index1 + '/*.{gif}'
  fileNames = Dir[imageSource1].entries
else
  #imageSource1 = './drop images here/Index/' + index1 + '/*.{jpg,png,gif}'
  #imageSource2 = './drop images here/Index/' + index2 + '/*.{jpg,png,gif}'
  imageSource1 = 'C:/xampp/htdocs/img/Index/' + index1 + '/*.{gif}'
  #imageSource1 = './drop images here/Index/' + index1 + '/*.{gif}'
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

puts "Got here"
newArray.each {|x| print File.basename(x).to_s , "\n" }

#open(results,'w') { |f| newArray.each {|x| f << '<video src="../../img/' + '733061a.webm' + '"' + ' controls>' + '</video>' + "\n" }}
open(results,'w') { |f| newArray.each {|x| f << '<video src="../../img/' + File.basename(x).to_s + '"' + ' controls>' + '</video>' + "\n" }}
#s = '<video src="C:/xampp/htdocs/img/Index/' +  x.to_s + '"' + ' controls>' + '</video>'

#s = '<video width="320" height="240" autoplay>' +   '<source src="290952a.webm" type="video/webm">' + 'Your browser does not support the video tag.' + '</video>'
#open(results,'w') { |f| newArray.each {|x| f << '<video src="' +  x.to_s + '"' + ' controls>' + '</video>' + "\n" }}
#
# Write the file names to a file and print the results
#
#open(results,'w') { |f| newArray.each {|x| f << "'<img src = " + '"' + x.to_s + '"' + ">'" + "\n" }}

#---------------------------------------------------
# To run this program
#
# 1 - Start Command Prompt with Ruby  C:\Windows\System32\cmd.exe /E:ON /K C:\Ruby21\bin\setrbvars.bat
# 2 - cd development
# 3 - cd rubyprograms
# 4 - ruby createImageFile.rb  
#----------------------------------------------------