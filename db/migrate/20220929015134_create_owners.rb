class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :nombre
      t.integer :cedula
      t.integer :telefono
      t.string :correo

      t.timestamps
    end
  end
end
