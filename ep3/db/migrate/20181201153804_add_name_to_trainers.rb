class AddNameToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :name, :string
  end
end
