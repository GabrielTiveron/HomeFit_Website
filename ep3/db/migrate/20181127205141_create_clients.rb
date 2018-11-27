class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.integer :condition
      t.references :exercise, foreign_key: true
      t.references :food, foreign_key: true
      t.float :height
      t.float :weight

      t.timestamps
    end
  end
end
