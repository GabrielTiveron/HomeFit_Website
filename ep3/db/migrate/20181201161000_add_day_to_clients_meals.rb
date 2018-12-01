class AddDayToClientsMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :clients_meals, :day, :string
  end
end
