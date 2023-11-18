class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :model
      t.integer :status
      t.references :process, null: false, foreign_key: { to_table: :company_processes }

      t.timestamps
    end
  end
end
