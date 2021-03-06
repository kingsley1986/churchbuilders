class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :email, presence: true
         validates :password, presence: true
         validates :password_confirmation, presence: true
         validates :first_name, presence: true
         validates :last_name, presence: true
         validates :phone, presence: true
         validates :gender, presence: true
end
