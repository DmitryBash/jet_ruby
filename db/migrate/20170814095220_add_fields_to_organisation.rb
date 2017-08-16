class AddFieldsToOrganisation < ActiveRecord::Migration[5.1]
  def change
    add_column :organisations, :today_date, :date
    add_column :organisations, :today_menu_active, :boolean, default: false
  end
end
