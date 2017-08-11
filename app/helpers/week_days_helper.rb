module WeekDaysHelper
  def total_sum(orders)
    sum = 0
    orders.each do |order|
      sum += order.order_sum
    end
    raw "<h3>Total sum is: #{sum}</h3>"
  end
end

