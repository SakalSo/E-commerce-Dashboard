class CategoryDetail < ApplicationRecord
  belongs_to :category
  belongs_to :product

    accepts_nested_attributes_for :product, reject_if: :all_blank, allow_destroy: true
end
