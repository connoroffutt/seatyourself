class User < ApplicationRecord

  has_secure_password

  has_many :restaurants, through: :reservations
  has_many :reservations
end
