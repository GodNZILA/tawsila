class Voiture < ApplicationRecord
  belongs_to :conducteur
  has_many :offres
  def voiture_name
    "#{marque} #{model} #{immatriculation}"
  end
end
