class AddColumnToBookin < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :depart, :string
    add_column :bookings, :arrivee, :string
  end
end
