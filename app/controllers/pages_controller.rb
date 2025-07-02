class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :login

  def login
    render inertia: 'Login'
  end

  def home
    render inertia: 'Home', props: { user: current_user.as_json(only: [:id, :email]) }
  end
end
