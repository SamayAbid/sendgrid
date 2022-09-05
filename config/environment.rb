# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	username: 'api_key',
	password: Rails.application.credentials.dig(:sendgrid , :api_key),
	domain: 'https://afternoon-ridge-89209.herokuapp.com/',
	port: 587,
	authentication: :plain,
	enable_starttls_auto: true
}