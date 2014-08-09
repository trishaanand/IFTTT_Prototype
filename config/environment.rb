# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#Configure SendGrid credentials
ActionMailer::Base.smtp_settings = {
  :user_name => 'trisha1990@gmail.com',
  :password => 'iEkFiJiAlK0LbEUNN-PZlg',
  :domain => 'trishaanand.com',
  :address => 'smtp.mandrillapp.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
