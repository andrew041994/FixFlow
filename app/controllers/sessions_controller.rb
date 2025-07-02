class SessionsController < Devise::SessionsController
  layout false

  def new
    render inertia: 'Login'
  end

  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    redirect_to dashboard_path
  end

  def destroy
    signed_out = sign_out(resource_name)
    set_flash_message! :notice, :signed_out if signed_out
    redirect_to new_user_session_path
  end
end
