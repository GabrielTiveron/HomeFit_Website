class Client < ApplicationRecord
  has_one :trainer
  has_many :exercise
  has_many :food
end
