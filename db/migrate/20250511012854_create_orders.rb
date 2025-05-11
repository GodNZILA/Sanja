class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :status, null: false, default: 0
      t.decimal :total_price, precision: 10, scale: 2
      t.references :shipping_address, null: false, foreign_key: { to_table: :addresses }
      t.references :billing_address, null: false, foreign_key: { to_table: :addresses }
      t.datetime :placed_at

      t.timestamps
    end
  end
end