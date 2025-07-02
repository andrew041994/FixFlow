class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include InertiaRails::Controller

  before_action :authenticate_user!, unless: :devise_controller?

  inertia_share flash: -> { { notice: flash[:notice], alert: flash[:alert] } }
end
