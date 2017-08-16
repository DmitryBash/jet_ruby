class RemoveOrganisationIdFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :organisation_id, :integer
    add_column :profiles, :organisation_id, :integer
    add_index :profiles, :organisation_id
  end
end
