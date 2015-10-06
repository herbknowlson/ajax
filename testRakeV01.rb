# http://martinfowler.com/articles/rake.htmlhttp://martinfowler.com/articles/rake.html


#WIKI
#For free and open stock prices, we recommend database WIKI.
#This is an unrestricted and unencumbered collection of historical stock prices on 3 North American exchanges:
#NYSE, NASDAQ and AMEX. The data in this database is curated by the Quandl community.
#It is usually updated within 6 hours of the close; however, since it is crowd-sourced, the delivery time cannot be guaranteed

#https://www.quandl.com/
#https://www.quandl.com/help/api

#https://www.quandl.com/api/v1/datasets/WIKI/AAPL.csv?sort_order=asc&exclude_headers=true&rows=3&trim_start=2012-11-01&trim_end=2013-11-30&column=4&collapse=quarterly&transformation=rdiff

require 'rest_client'
require './helpers'
require './Common'
include Common

if ENV["DEBUG"] == true
  DEBUG = true
else
  DEBUG = ENV["DEBUG"]
end

#yDTLcpj-V897yAzGks-J

#describe "rpec example" do
#  it 'step-01 should test rake' do
    puts "This is the output from Ruby program testRakeV01.rb"
  #end

#https://www.quandl.com/api/v1/datasets/WIKI/AAPL.json?auth_token=yDTLcpj-V897yAzGks-J
#SERVER_URL = "https://www.quandl.com/api/v1/datasets/WIKI/AAPL.json?&trim_start=2013-11-09&trim_end=2013-11-10&auth_token=yDTLcpj-V897yAzGks-J"
#  it 'step-02 should test RestClient' do
#    response = RestClient.get("#{SERVER_URL}"){|response, request, result|
#      Common.debug(request, response, DEBUG)
#      response = JSON.parse(response)
#      #puts response
#  ##    response["responseCode"].should eql 0
#  ##    response["model"]["patients"].count.should > 1
#   }
#  end
#end 
#
#MAX_FILES = 100
#results = "indexNames.json"
#results2 = "indexNames.txt"
##puts results
#
#myfolder = "C:/xampp/htdocs/Ajax/drop images here/Index/"
#
#keys = []
#values = []
#i = 0
#x = 0
#Dir.entries(myfolder).each do |fullName|
#  if x>1
#    keys[i] = fullName[0..2]
#    values[i] = fullName[4..35]
#    i = i+1
#  end
#  x = x +1   
# end
#
#tempHash = Hash[keys.zip values]
#require 'json'
#tempHash.to_json
#puts JSON.pretty_generate(tempHash)
#
##
## Write the file names to a file and print the results
##
#File.open(results,"w") do |f|
#  f.write(tempHash.to_json)
#end
#
#tdCount = 0
#trCount = 0
#File.open(results2,"w") do |f|
#  tr = "<table style=width:75% CLASS=boldtable><tr>"
#  f.puts tr
#  for i in 0 ... keys.size
#    tdCount = tdCount + 1
#    td = "<td><a href='index.php?select=true&index1=" + keys[i] + "*'>" + values[i] + "</a>"
#    td2 = " -  <a href='index.php?select=true&index1=" + keys[i] + "*&index2=gifs'>gifs</a>  </td>"
#    f.puts td + td2
#    if tdCount > 2
#      trCount = trCount + 1
#      tr = "</tr><tr>"
#      f.puts tr
#      tdCount = 0
#    end
#    if trCount > 2
#      tr = "</tr></table><br><table style=width:75% CLASS=boldtable><tr>"
#      f.puts tr
#      trCount = 0
#    end
#  end #outer loop
#end # close the file

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