class CreateWorkOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :work_orders do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :priority
      t.datetime :scheduled_date
      t.datetime :completed_date
      t.integer :estimated_time
      t.integer :actual_time
      t.references :asset, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :work_order_number

      t.timestamps
    end

    add_index :work_orders, :work_order_number, unique: true
  end
end
