class OrganisationsController < ApplicationController
  authorize_resource

  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.create(org_params)
    if @organisation.save
      flash[:success] = "Organisation Created"
      redirect_to root_url
    else
      flash[:error] = @organisation.errors.full_messages.join('\n')
      render :new
    end
  end

  private

  def org_params
    params.require(:organisation).permit(:organisation_name, :today_date, :today_menu_active)
  end
end
