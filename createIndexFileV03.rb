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
results2 = "indexNames2.txt"
myfolder = "E:/xampp/htdocs/img/movies/"

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
    td = "<td><a href='index2.php?select=true&index1=" + keys[i] + "*'>" + values[i] + "</a>"
    #td2 = " -  <a href='index2.php?select=true&index1=" + keys[i] + "*&index2=gifs'>gifs</a>  </td>"
    td2 = ""
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