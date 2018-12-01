class AddInstitutionToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :institution, :string
  end
end
