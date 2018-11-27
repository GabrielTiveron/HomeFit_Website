class Client < ApplicationRecord
  belongs_to :exercise
  belongs_to :food
end
