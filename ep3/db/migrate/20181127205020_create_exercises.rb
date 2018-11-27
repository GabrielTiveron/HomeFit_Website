class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :duration
      t.boolean :state
      t.text :desc

      t.timestamps
    end
  end
end
