set :path, '/home/nyros/Desktop/mailit'
set :environment, :development
set :output , '/home/nyros/Desktop/mailit/error.log'


every 1.minute do
    runner "UserMailer.registration_confirm"
    runner  "UserMailer.registration_confirm('kveerababu_nyros@yahoo.com').deliver"
end
every 1.minute do
    
  rake "cron"                 
  
end
