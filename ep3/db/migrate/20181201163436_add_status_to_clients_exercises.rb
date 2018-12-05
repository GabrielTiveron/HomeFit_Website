class AddStatusToClientsExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :clients_exercises, :status, :boolean, default: false
  end
end
