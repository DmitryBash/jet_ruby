class WeekDay < ApplicationRecord
  has_many :products

  private

  def self.search(day_name)
    if day_name
      where('day_name LIKE ?', "%#{day_name}%")
    else
      all.order(id: 'ASC')
    end
  end
end
