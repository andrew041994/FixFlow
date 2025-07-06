class CreatePreventiveMaintenances < ActiveRecord::Migration[8.0]
  def change
    create_table :preventive_maintenances do |t|
      t.string :title
      t.text :description
      t.string :frequency
      t.datetime :start_date
      t.datetime :due_date
      t.integer :estimated_time
      t.integer :actual_time
      t.references :asset, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :pm_number

      t.timestamps
    end

    add_index :preventive_maintenances, :pm_number, unique: true
  end
end
