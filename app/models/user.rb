class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable
  validates :username, presence: true, uniqueness: false, length: { minimum: 2, maximum: 20 }
  validates :email, presence: true, uniqueness: true
end
