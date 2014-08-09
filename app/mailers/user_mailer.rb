class UserMailer < ActionMailer::Base
  default from: "trisha1990@gmail.com"

  def send_trigger_email(a, b)
  	# @user = user
  	puts "Its getting triggered bitch"
  	mail(to: 'mohanarpit@gmail.com', subject: 'Trigger generated')#,	body: 'This works!')
  end
end
