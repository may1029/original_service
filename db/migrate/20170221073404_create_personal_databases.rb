class CreatePersonalDatabases < ActiveRecord::Migration
  def change
    create_table :personal_databases do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.string :image

      t.timestamps null: false
    end
  end
end
