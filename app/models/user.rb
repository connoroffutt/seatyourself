class User < ApplicationRecord
  has_many :restaurants, through: :reservations
  has_many :reservations
end
