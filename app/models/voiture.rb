class Voiture < ApplicationRecord
  belongs_to :conducteur
  has_many :offres
  has_one_attached :photo

  def voiture_name
    "#{marque} #{model} #{immatriculation}"
  end
end
