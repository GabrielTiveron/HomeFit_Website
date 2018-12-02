class Meal < ApplicationRecord
  has_and_belongs_to_many :foods
  has_many :meal, through: :menu

end
