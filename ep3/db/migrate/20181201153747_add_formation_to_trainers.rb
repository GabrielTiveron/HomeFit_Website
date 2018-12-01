class AddFormationToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :formation, :string
  end
end
