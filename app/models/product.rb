class Product < ApplicationRecord
  belongs_to :category
  has_many :variants
  has_many :reviews

  enum gender: { unisex: 0, men: 1, women: 2 }
  enum status: { available: 0, discontinued: 1 }
end