class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :product
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
