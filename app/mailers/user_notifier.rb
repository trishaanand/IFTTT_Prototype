class UserNotifier < ActionMailer::Base
  default from: "trishaanand@icloud.com"

  def send_trigger_email(user, data)
  	@user = user
  	mail (:to => @user.email,
  		:subject => 'Trigger generated'
  		:body => data)
  end
end
