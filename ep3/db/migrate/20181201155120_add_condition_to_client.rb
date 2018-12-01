class AddConditionToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :condition, :integer
  end
end
