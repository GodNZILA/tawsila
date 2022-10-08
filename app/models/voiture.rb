class Voiture < ApplicationRecord
  belongs_to :conducteur
  has_many :offres
end
