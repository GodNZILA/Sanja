class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :cart_items
    has_many :orders
    has_many :addresses
    has_many :reviews
  
    enum role: { customer: 0, admin: 1 }
  
    validates :email, presence: true, uniqueness: true
    validates :first_name, :last_name, presence: true
  end