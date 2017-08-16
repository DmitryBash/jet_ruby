class OrganisationsController < ApplicationController
  authorize_resource

  def new
    @organisation = Organisation.new
  end

  def create
    if @organisation = Organisation.create(org_params)
      flash[:success] = "Organisation Created"
      redirect_to root_url
    else
      flash[:error] = @organisation.errors.full_messages.join('\n')
      redirect_to new_organisation_path
    end
  end

  private

  def org_params
    params.require(:organisation).permit(:organisation_name, :today_date, :today_menu_active)
  end
end
