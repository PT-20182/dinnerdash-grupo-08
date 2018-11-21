class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validates presence and uniqueness of full name and username
  validates_presence_of :full_name
  validates_uniqueness_of :full_name
  validates_presence_of :username
  validates_uniqueness_of :username
end
