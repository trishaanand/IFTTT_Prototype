# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#Configure SendGrid credentials
ActionMailer::Base.smtp_settings = {
  :user_name => 'trishaanand',
  :password => 'CuZIel74dPh73-33OVAEKQ',
  :domain => 'trishaanand.com',
  :address => 'smtp.mandrillapp.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
