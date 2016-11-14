class Reservation < ApplicationRecord
  belongs_to :users
  belongs_to :restaurant

  validates :datetime, :party_size, presence: true
end
