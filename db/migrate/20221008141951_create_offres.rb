class CreateOffres < ActiveRecord::Migration[7.0]
  def change
    create_table :offres do |t|
      t.string :description_trajet
      t.string :depart
      t.string :arrivee
      t.string :status, default: "valide"
      t.datetime :heure_depart
      t.float :prix
      t.references :voiture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
