class CreateConducteurs < ActiveRecord::Migration[7.0]
  def change
    create_table :conducteurs do |t|
      t.string :numero_permis
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
