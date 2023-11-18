class CreateProcessSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :process_steps do |t|
      t.string :name
      t.text :description
      t.integer :step_order
      t.references :company_process, null: false, foreign_key: { to_table: :company_processes }

      t.timestamps
    end
  end
end
