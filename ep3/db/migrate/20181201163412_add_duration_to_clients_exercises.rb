class AddDurationToClientsExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :clients_exercises, :duration, :integer
  end
end
