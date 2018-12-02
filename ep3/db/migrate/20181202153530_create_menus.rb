class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :day
      t.references :client, foreign_key: true
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end
