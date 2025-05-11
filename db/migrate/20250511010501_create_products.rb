class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.decimal :price
      t.integer :gender
      t.integer :status

      t.timestamps
    end
  end
end