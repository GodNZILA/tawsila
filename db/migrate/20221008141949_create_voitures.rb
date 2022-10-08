class CreateVoitures < ActiveRecord::Migration[7.0]
  def change
    create_table :voitures do |t|
      t.string :model
      t.string :marque
      t.string :immatriculation
      t.references :conducteur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
