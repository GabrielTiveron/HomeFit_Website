class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :formation
      t.string :name
      t.string :institution
      t.integer :age
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
