class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.decimal :price
      t.integer :quantity
      t.belongs_to :order, foreign_key: true
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
