class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.string :full_name
      t.string :email
      t.string :phone
      t.float :order_sum, default: 0
      t.belongs_to :profile, index: true
      t.timestamps
    end
  end
end
