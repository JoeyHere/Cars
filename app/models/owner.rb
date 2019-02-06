class Owner < ApplicationRecord
  has_many :cars
  has_many :brands, through: :cars
  has_many :mechanics, through: :cars
end
