class CreateCategoryDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :category_details do |t|
      t.references :product
      t.references :Cateogry

      t.timestamps
    end
  end
end
