class Passager < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :offres, through: :bookings
end
