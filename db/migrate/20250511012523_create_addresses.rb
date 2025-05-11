class CreateAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :street
      t.string :city
      t.string :zip_code
      t.string :country
      t.string :phone
      t.integer :type

      t.timestamps
    end
  end
end
