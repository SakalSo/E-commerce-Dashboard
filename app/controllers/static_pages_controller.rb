class StaticPagesController < FrontEndApplicationController
  def home
    @categories = Category.all
  end
end
