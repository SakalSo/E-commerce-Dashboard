class OrderDetailsController < FrontEndApplicationController
  def index
    @order_details = current_cart.order.order_details
  end
  def create
    current_cart.add_item(
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
    redirect_to cart_path
  end
end
