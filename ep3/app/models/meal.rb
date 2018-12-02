class Meal < ApplicationRecord
  has_and_belongs_to_many :food
  has_and_belongs_to_many :client
end
