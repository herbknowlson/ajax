Dir[File.dirname(__FILE__) + "/../config.rb"].each {|file| require file }

BASE_URL = ENV["BASE_URL"]
AMP_URL = ENV["AMP_URL"]
SITEID = ENV["SITE_ID"]
PM_MODID = ENV['PM_MOD_ID']

USERNAME = "hknowlson"
PASSWORD = "Pass12345"

if ENV["DEBUG"] == "true"
  DEBUG = true
else
  DEBUG = ENV["DEBUG"]
end

describe "URL Status site: " + SITEID do
  
  
  before (:all) do
    RUBY_VERSION.should eql "1.9.3"
    response = RestClient.post("#{BASE_URL}/logon", :username => USERNAME, :password => PASSWORD){|response, request, result|
      Common.debug(request, response, DEBUG)
      response = JSON.parse(response)
      @xAuthToken = response["model"]["xAuthToken"]
    }
  end
  
  it 'step-00 should return Census with at least 2 patients' do
    response = RestClient.get("#{BASE_URL}/patientlist", :x_auth_token => @xAuthToken, :params => {:listtype => 'Census', :moduleId => PM_MODULE_ID, :siteId => SITEID}){|response, request, result|
      Common.debug(request, response, DEBUG)
      response = JSON.parse(response)
      response["responseCode"].should eql 0
      response["model"]["patients"].count.should > 1
    }
  end
  
    it 'step-01 should return base URL status ' do
      response = RestClient.get("#{BASE_URL}status", :content_type => 'application/json', :accept => 'json'){|response, request, result|
      Common.debug(request, response, DEBUG)
      response = JSON.parse(response)
      #response["responseCode"].should eql 0
      #pmBaseAddress = response["configuration"]["pmBaseAddress"]
      #puts "pmBaseAddress: " + pmBaseAddress
      #version = response["moduleStatuses"]["pm"]["content"]["model"]["Version"]
      #
      #puts "-------------------------------------------------"
      #puts "Version: " + version
      #puts "-------------------------------------------------"
    }
    end
   
    it "step-02 should return module instance configuration " do			
      response = RestClient.get("#{AMP_URL}ModuleInstanceConfiguration/" + PM_MODID, :content_type => 'application/json'){|response, request, result|
      Common.debug(request, response, DEBUG)
    #response = JSON.parse(response)
    #response["responseCode"].should eql 0
    #response["model"].should eql true
    }    
  end
end

