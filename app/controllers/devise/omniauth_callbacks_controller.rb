class Devise::OmniauthCallbacksController < DeviseController
  def all
    @user = User.from_omniauth(request.env['omniauth.auth'])
    if @user.persisted?
      flash[:success] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra)
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end
  alias_method :google_oauth2, :all
end
