class CreateJoinTableClientExercise < ActiveRecord::Migration[5.2]
  def change
    create_join_table :clients, :exercises do |t|
      # t.index [:client_id, :exercise_id]
      # t.index [:exercise_id, :client_id]
    end
  end
end
