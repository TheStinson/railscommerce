class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_description
      t.integer :product_price
      t.references :category, foreign_key: true
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
