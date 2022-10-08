class Conducteur < ApplicationRecord
  belongs_to :user
  has_many :voitures
end
