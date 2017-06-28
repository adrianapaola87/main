

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'paola8708',
  :password => 'paola870810',
  :domain => 'paola30.herokuapp.com',
  :address => 'smtp.sendgrid.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}