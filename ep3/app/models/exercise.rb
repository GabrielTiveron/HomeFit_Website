class Exercise < ApplicationRecord
  has_many :routine
  has_many :client, through: :routine 
end
