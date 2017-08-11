module Admin
  class UsersController < Admin::ApplicationController
    authorize_resource
    def index
      @users = User.search(params[:email])
    end
  end
end
