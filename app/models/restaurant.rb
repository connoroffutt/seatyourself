class Restaurant < ApplicationRecord
  has_many :users, through: :reservations
  has_many :reservations
end
