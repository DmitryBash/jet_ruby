class AddOrganisationIdToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :organisation_id, :integer
    add_index :orders, :organisation_id
  end
end
