class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do|t|
      t.string :productName
      t.integer :price
      t.string :productImage
    end
  end
end
