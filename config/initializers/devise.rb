Devise.setup do |config|
  config.secret_key = 'temporary_devise_secret' unless Rails.env.production?
  config.mailer_sender = 'please-change-me@example.com'
  require 'devise/orm/active_record'
  config.navigational_formats = ['*/*', :html, :turbo_stream]
end
