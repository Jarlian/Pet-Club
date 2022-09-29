class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :nombre
      t.string :especie
      t.string :comida
      t.text :enfermedades
      t.text :alergias
      t.text :cuidados

      t.timestamps
    end
  end
end
