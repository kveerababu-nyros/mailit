ActionMailer::Base.smtp_settings = {  
      :address              => "smtp.gmail.com",  
      :port                 => 587,  
      :domain               => "gmail.com",  
     :user_name            => "veeru.nyros@gmail.com", #Your user name
      :password             => "9666004495", # Your password
      :authentication       => "plain",  
      :enable_starttls_auto => true  
   }