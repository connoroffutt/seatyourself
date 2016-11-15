class Reservation < ApplicationRecord
  belongs_to :users
  belongs_to :restaurant

  validates :datetime, presence: true
end
