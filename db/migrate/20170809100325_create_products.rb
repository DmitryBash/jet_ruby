class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :category
      t.string :name
      t.float :price
      t.date :today_date
      t.belongs_to :week_day, index: true
      t.timestamps
    end
  end
end
