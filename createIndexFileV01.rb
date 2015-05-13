#---------------------------------------------------
#
# This program reads a directory containing directories
# and writes the directory names, formated as HTML to a file
# called indexNames.txt so it can used by a web page with
# Ajax code.
#----------------------------------------------------
#


MAX_FILES = 100
results = "indexNames.json"
results2 = "indexNames.txt"
#puts results

myfolder = "C:/xampp/htdocs/Ajax/drop images here/Index/"

keys = []
values = []
i = 0
x = 0
Dir.entries(myfolder).each do |fullName|
  if x>1
    keys[i] = fullName[0..2]
    values[i] = fullName[4..35]
    i = i+1
  end
  x = x +1   
 end

tempHash = Hash[keys.zip values]
require 'json'
tempHash.to_json
puts JSON.pretty_generate(tempHash)

#
# Write the file names to a file and print the results
#
File.open(results,"w") do |f|
  f.write(tempHash.to_json)
end

tdCount = 0
trCount = 0
File.open(results2,"w") do |f|
  tr = "<table style=width:75% CLASS=boldtable><tr>"
  f.puts tr
  for i in 0 ... keys.size
    tdCount = tdCount + 1
    td = "<td><a href='index.php?select=true&index1=" + keys[i] + "*'>" + values[i] + "</a>"
    td2 = " -  <a href='index.php?select=true&index1=" + keys[i] + "*&index=gifs'>gifs</a>  </td>"
    f.puts td + td2
    if tdCount > 2
      trCount = trCount + 1
      tr = "</tr><tr>"
      f.puts tr
      tdCount = 0
    end
    if trCount > 2
      tr = "</tr></table><br><table style=width:75% CLASS=boldtable><tr>"
      f.puts tr
      trCount = 0
    end
  end #outer loop
end # close the file

#<td><a href='index.php?select=true&index1=0_F*'>Favorites</a></td>
#open(results2,'w') { |f| newArray.each {|x| f << "'<img src = " + '"' + x.to_s + '"' + ">'" + "\n" }}



#<td><a href='index.php?select=true&index1=0_F*'>Favorites</a></td>

 #open(results,'w') { |f| Dir.entries(myfolder).each {|x| f << x.to_s + "\n" }}


#if v=index2.nil?
#  imageSource1 = './drop images here/Index/' + index1 + '/*.{jpg,png,gif}'
#  #imageSource1 = './drop images here/Index/' + index1 + '/*.{gif}'
#  fileNames = Dir[imageSource1].entries
#else
#  #imageSource1 = './drop images here/Index/' + index1 + '/*.{jpg,png,gif}'
#  #imageSource2 = './drop images here/Index/' + index2 + '/*.{jpg,png,gif}'
#  imageSource1 = './drop images here/Index/' + index1 + '/*.{gif}'
#  imageSource2 = './drop images here/Index/' + index2 + '/*.{gif}'
#  fileNames = Dir[imageSource1].entries
#  fileNames2 = Dir[imageSource2].entries
#  fileNames.concat fileNames2  # Concatinate the files
#end  
#
##
## Randomize the file
##
#newArray = []
#i = 0
#fileSize = fileNames.size
#while  fileNames.size > 0
#  r = rand(0..fileNames.size) # pick a random file from what remains
#  newArray[i] = fileNames[r]  # add the random file to the new array
#  fileNames.delete_at(r)      # remove the selected file
#  i = i + 1
#  if i > MAX_FILES            # don't build too big a page
#    break
#  end
#end
#
#newArray.each {|x| print x, "\n" }
#
##
## Write the file names to a file and print the results
##
#open(results,'w') { |f| newArray.each {|x| f << "'<img src = " + '"' + x.to_s + '"' + ">'" + "\n" }}

#---------------------------------------------------
# To run this program
#
# 1 - Start Command Prompt with Ruby  C:\Windows\System32\cmd.exe /E:ON /K C:\Ruby21\bin\setrbvars.bat
# 2 - cd development
# 3 - cd rubyprograms
# 4 - ruby createImageFile.rb  
#----------------------------------------------------