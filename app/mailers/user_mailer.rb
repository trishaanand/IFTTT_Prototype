class UserMailer < ActionMailer::Base
  default from: 'trishaanand@icloud.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://arpitmohan.com'
    mail(to: 'arpit@clinknow.com', 
    	subject: 'Welcome to My Awesome Site')
  end
end
