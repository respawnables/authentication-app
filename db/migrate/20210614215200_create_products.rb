class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :describe, null: false
      t.decimal :price, default: 0.0

      t.timestamps
    end
  end
end
