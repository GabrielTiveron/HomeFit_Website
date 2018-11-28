class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.integer :condition
      t.references :exercise, foreign_key: true, defailt=>nil
      t.references :food, foreign_key: true, default=>nil
      t.references :trainer, foreign_key: true, default=>nil
      t.float :weight
      t.float :height

      t.timestamps
    end
  end
end
