class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.float :size
      t.float :weight
      t.integer :material_type
      t.references :provider, null: false, foreign_key: { to_table: :providers }
      t.references :warehouse, null: false, foreign_key: { to_table: :warehouses }

      t.timestamps
    end
  end
end
