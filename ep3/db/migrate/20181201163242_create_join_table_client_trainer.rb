class CreateJoinTableClientTrainer < ActiveRecord::Migration[5.2]
  def change
    create_join_table :clients, :trainers do |t|
      # t.index [:client_id, :trainer_id]
      # t.index [:trainer_id, :client_id]
    end
  end
end
