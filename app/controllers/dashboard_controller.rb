class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    render inertia: 'Dashboard', props: {
      user: { email: current_user.email }
    }
  end
end
