<<<<<<< HEAD
class ApplicationController < ActionController::API
=======
class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
>>>>>>> 5f65ed534cfec0850a02ca2c5d5a6cf5eb435a5b
end
