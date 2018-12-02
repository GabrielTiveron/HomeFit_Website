class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :routine
  has_many :exercise, through: :routine

  has_many :menu
  has_many :meal, through: :menu
  
  has_and_belongs_to_many :trainers

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
