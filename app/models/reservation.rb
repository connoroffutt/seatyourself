class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :datetime, :party_size, presence: true
end
