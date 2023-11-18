class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :info
      t.references :company, null: false, foreign_key: { to_table: :companies }

      t.timestamps
    end
  end
end
