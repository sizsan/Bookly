class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, password_length: 6..64
  has_many :adverts
  # This defines the relationship between `users` and `adverts` where the user has many adverts and adverts belong to user.
  has_many :orders
  # This defines the relationship between `users` and `orders` where the user has many orders and orders belong to user.
end
