class CreateTakes < ActiveRecord::Migration[7.0]
  def change
    create_table :takes do |t|
      t.float :size
      t.float :weight
      t.references :material, null: false, foreign_key: { to_table: :materials }

      t.timestamps
    end
  end
end
