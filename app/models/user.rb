class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :transactions, through: :acomptes
  # has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: true
end
