class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|
      t.integer :duration
      t.boolean :status
      t.string :day
      t.references :client, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
