class CreateInventoryItems < ActiveRecord::Migration[8.0]
  def change
    create_table :inventory_items do |t|
      t.string :item_number
      t.string :name
      t.text :description
      t.integer :quantity
      t.decimal :unit_cost
      t.string :location
      t.integer :minimum_quantity
      t.string :vendor

      t.timestamps
    end

    add_index :inventory_items, :item_number, unique: true
  end
end
