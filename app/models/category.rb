class Category < ApplicationRecord
  has_many :category_details
  has_many :products, through: :category_details
  accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true
end
