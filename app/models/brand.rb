class Brand < ApplicationRecord
  has_many :cars
  has_many :owners, through: :cars
  has_many :mechanics, through: :cars
end
