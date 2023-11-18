class CreateCompanyProcesses < ActiveRecord::Migration[7.0]
  def change
    create_table :company_processes do |t|
      t.string :name
      t.text :description
      t.references :company, null: false, foreign_key: { to_table: :companies}

      t.timestamps
    end
  end
end
