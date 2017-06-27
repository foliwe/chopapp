class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

 #redirect_signed_in? user to resipes_path
  def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || recipes_path
   end

    rescue_from CanCan::AccessDenied do |exception|
      respond_to do |format|
        format.json { head :forbidden, content_type: 'text/html' }
        format.html { redirect_to main_app.root_url, notice: exception.message }
        format.js   { head :forbidden, content_type: 'text/html' }
      end
    end
  
   protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
