require 'rspec/core/rake_task'

desc "run rake testRspec"
RSpec::Core::RakeTask.new(:testRspec) do |t|
  t.pattern = 'testRakeRspecV01.rb'
  #t.pattern = './spec/pm8_spec.rb:177'
  #t.rspec_opts = '--color '
  #t.rspec_opts << '--format nested '
  #t.rspec_opts << '--format html '
  #t.rspec_opts << '--out test_results.html '
  if ENV['DEBUG'] == nil
    ENV["DEBUG"] = "false"
  end
  
#  if ENV['SITE_ID'] == nil
#    ENV['SITE_ID'] = "1592"
#  end
#  
#  if ENV['SERVER_URL'] == nil
#    ENV['SERVER_URL'] = "https://10.10.0.184/fed-web-cardio-pm-cmo-cert/api"
#  end
#  
#  if ENV['USERNAME'] == nil
#    ENV['USERNAME'] = "apiuser"
#  end
#  
#  if ENV['PASSWORD'] == nil
#    ENV['PASSWORD'] = "Pass12345"
#  end
#  if ENV['LINE']
#    t.pattern << ':' + ENV['LINE']
#  end
end