class WeekDay < ApplicationRecord
  has_many :products
  validates :day_name, :today_date, :active, presence: true

  private

  def self.search(day_name)
    if day_name
      where('day_name LIKE ?', "%#{day_name}%")
    else
      all.order(id: 'ASC')
    end
  end
end
