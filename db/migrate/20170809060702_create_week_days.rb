class CreateWeekDays < ActiveRecord::Migration[5.1]
  def change
    create_table :week_days do |t|
      t.string :day_name
      t.date :today_date
      t.boolean :active
      t.timestamps
    end
  end
end
