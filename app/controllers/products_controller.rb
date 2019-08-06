class ProductsController < FrontEndApplicationController
  def index
    category = Category.find(params[:category_id])
    @products = category.products
  end
end
