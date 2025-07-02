class DashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    render inertia: 'Dashboard', props: { userEmail: current_user.email }
  end
end
