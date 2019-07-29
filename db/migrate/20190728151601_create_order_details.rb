class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.references :order
      t.string :first_name
      t.string :last_name
      t.decimal :sub_total

      t.timestamps
    end
  end
end
