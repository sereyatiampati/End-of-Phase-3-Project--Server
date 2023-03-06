class CreateLogin < ActiveRecord::Migration[7.0]
  def change
    create_table :login do|t|
      t.integer :session
    end
  end
end
