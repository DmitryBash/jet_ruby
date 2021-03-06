class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.js { head :forbidden }
      format.json { head :forbidden }
      format.html { redirect_to root_url, alert: exception.message }
    end
  end
end
