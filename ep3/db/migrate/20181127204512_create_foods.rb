class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :qt
      t.string :name
      t.string :meal

      t.timestamps
    end
  end
end
