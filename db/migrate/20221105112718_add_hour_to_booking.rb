class AddHourToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :heure_depart, :date
  end
end
