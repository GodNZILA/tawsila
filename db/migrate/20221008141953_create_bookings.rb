class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :date_reservation
      t.float :prix
      t.string :statut
      t.references :offre, null: false, foreign_key: true
      t.references :passager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
