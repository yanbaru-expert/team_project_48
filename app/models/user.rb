class User < ApplicationRecord
  # has_many :movies, dependent: :destroy
  has_many :watches, dependent: :destroy
  
  has_many :watched_movies, through: :watches, source: :movie
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
