class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to dashboard_path
    else
      render inertia: 'Auth/Login'
    end
  end
end
