class CreateAssets < ActiveRecord::Migration[8.0]
  def change
    create_table :assets do |t|
      t.string :asset_number
      t.string :make
      t.string :model
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
