class AddAgeToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :age, :integer
  end
end
