class UserMailer < ActionMailer::Base
  default from: "trisha1990@gmail.com"

  def send_trigger_email(user, data)
  	@user = user
  	@data = data
  	mail(to: @user.email, subject: 'Trigger generated')
  end
end
