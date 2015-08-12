class UserMailer < ApplicationMailer
	 default :from => "veeru.nyros@gmail.com"
  
  def registration_confirm(user_email)
    puts"mail has been sent suuccessfully"

    @user=user_email
    mail(:to => user_email, :subject => "Registered")
  end
end
