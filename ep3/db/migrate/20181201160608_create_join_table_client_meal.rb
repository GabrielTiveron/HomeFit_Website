class CreateJoinTableClientMeal < ActiveRecord::Migration[5.2]
  def change
    create_join_table :clients, :meals do |t|
      # t.index [:client_id, :meal_id]
      # t.index [:meal_id, :client_id]
    end
  end
end
