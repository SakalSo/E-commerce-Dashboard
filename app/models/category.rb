class Category < ApplicationRecord
  has_many :category_details
  has_many :products, through: :category_details
end
