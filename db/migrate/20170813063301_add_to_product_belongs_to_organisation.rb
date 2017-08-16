class AddToProductBelongsToOrganisation < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :organisation_id, :integer, index: true
    add_index :products, :organisation_id
  end
end
