class CategoriesController < FrontEndApplicationController
  def index

  end

  def show
    @category = Category.find(params[:id])
  end
end
