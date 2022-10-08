class Offre < ApplicationRecord
  belongs_to :voiture
  has_many :bookings
  has_many :passagers, through: :bookings
end
