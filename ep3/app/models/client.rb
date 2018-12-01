class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_and_belongs_to_many :exercises
  has_and_belongs_to_many :trainers
  has_and_belongs_to_many :meals

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
