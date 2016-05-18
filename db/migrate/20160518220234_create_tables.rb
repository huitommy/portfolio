class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :purpose, null: false
      t.text :description, null: false
      t.date :date, null: false
      t.string :image
      t.timestamps
    end
  end
end
