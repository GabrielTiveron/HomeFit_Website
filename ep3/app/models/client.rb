class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_and_belongs_to_many :exercise
  has_and_belongs_to_many :trainer
  has_and_belongs_to_many :meal

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
