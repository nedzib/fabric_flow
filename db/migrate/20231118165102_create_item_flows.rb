class CreateItemFlows < ActiveRecord::Migration[7.0]
  def change
    create_table :item_flows do |t|
      t.references :step, null: false, foreign_key: { to_table: :process_steps }
      t.integer :status
      t.references :item, null: false, foreign_key: { to_table: :items }

      t.timestamps
    end
  end
end
