class UserMailer < ActionMailer::Base
  default from: "trisha1990@gmail.com"

  def send_trigger_email(user, data)
  	@user = user
  	@data = data
  	mail(to: @user.email, subject: 'Random Number Trigger matched')
  end

  def send_dropbox_email(user, data)
  	@user = user
  	@data = data
  	puts "send_dropbox_email"
  	puts data
  	mail(to: @user.email, subject: 'Dropbox Files Changed')
  end
end
