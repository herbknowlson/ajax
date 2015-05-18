module Common
 
  def rd_number
    Random.rand(999999...9999999)
  end
  
  def debug(request, response, status)
    if status == true
      puts ""
      puts ""
      puts "Request: " + request.url
      puts "Response: " + response.gsub(/\s+/, "")
    elsif status == "pretty"
      puts ""
      puts ""
      req =  "Request: " + request.url
      puts req.magenta
      response = JSON.parse(response)
      puts puts JSON.pretty_generate(response)
    end
  end
end