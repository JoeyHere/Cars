class Car < ApplicationRecord
  belongs_to :mechanic
  belongs_to :owner
  belongs_to :brand
end
