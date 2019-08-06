class MyShoppingCart
  def initialize(token:)
    @token = token
  end
  def order
    @order ||= Order.find_or_create_by(token: @token) do |order|
      order.sub_total = 0
    end
  end
  def add_item(product_id: , quantity: 1)
    product = Product.find(product_id)
    order_details = order.order_details.find_or_create_by(product_id: product_id)
    order_details.price = product.price
    order_details.quantity = quantity
    order_details.save
    sub_total!
  end
  def remove_item(id:)

  end
  private
  def sub_total!
    order.sub_total = order.order_details.sum('price * quantity')
    order.save
  end
end
