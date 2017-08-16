class OrderWorker
  include Sidekiq::Worker

  def perform(order_id)
    order = Order.find(order_id)
    order_organisation = Organisation.find_by(id: order.organisation_id)
    unless order_organisation.today_menu_active
      order_query = Order.where(order_date: Date.today, organisation_id: order.organisation_id)
      if order_query.count > 5
        product_ids = order_query.collect{|o| o.products.ids}
        Product.where.not(id: product_ids.flatten!).where(organisation_id: order.organisation_id).destroy_all
        order_organisation.update(today_menu_active: true)
      end
    end
  end
end
