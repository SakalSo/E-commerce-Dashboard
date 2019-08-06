class Admin::CategoriesController < ApplicationController
  def index
  end
  def new
    @category = Category.new
  end
  def created
    @category = Category.new(category_params)
    if @category.save
      redirect_to new_admin_category_path(@category)
    else
      render :new
    end
  end
  private
  def   category_params
    params.require(:category).permit! # products_attributes: [:id, :title, :price, :description]
  end
end
