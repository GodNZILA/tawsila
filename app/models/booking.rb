class Booking < ApplicationRecord
  belongs_to :offre
  belongs_to :passager
end
