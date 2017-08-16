class OrderObserver < ActiveRecord::Observer
  def after_commit(order)
    OrderWorker.perform_async(order.id)
  end
end
