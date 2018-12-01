class CreateJoinTableFoodMeal < ActiveRecord::Migration[5.2]
  def change
    create_join_table :foods, :meals do |t|
      # t.index [:food_id, :meal_id]
      # t.index [:meal_id, :food_id]
    end
  end
end
