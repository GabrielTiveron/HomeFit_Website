class Menu < ApplicationRecord
  belongs_to :client
  belongs_to :meal
end
