# Be sure to restart your server when you modify this file.

<<<<<<< HEAD
# Configure sensitive parameters which will be filtered from the log file.
Rails.application.config.filter_parameters += [:password]
=======
# Configure parameters to be partially matched (e.g. passw matches password) and filtered from the log file.
# Use this to limit dissemination of sensitive information.
# See the ActiveSupport::ParameterFilter documentation for supported notations and behaviors.
Rails.application.config.filter_parameters += [
  :passw, :email, :secret, :token, :_key, :crypt, :salt, :certificate, :otp, :ssn, :cvv, :cvc
]
>>>>>>> 5f65ed534cfec0850a02ca2c5d5a6cf5eb435a5b
