class CreateWarehouses < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouses do |t|
      t.string :address
      t.float :capacity
      t.references :responsible, null: false, foreign_key: { to_table: :users }
      t.references :company, null: false, foreign_key: { to_table: :companies }

      t.timestamps
    end
  end
end
