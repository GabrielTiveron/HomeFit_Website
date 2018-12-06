class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :desc_exercise, unique: true

      t.timestamps
    end
  end
end
