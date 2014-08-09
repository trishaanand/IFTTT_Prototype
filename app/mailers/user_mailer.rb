class UserMailer < ActionMailer::Base
  default from: "trisha1990@gmail.com"

  def send_trigger_email(user, b)
  	@user = user
  	mail(to: @user.email, subject: 'Trigger generated')#,	body: 'This works!')
  end
end
