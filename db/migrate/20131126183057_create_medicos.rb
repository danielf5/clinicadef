class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.integer :identificacion
      t.string :nombres
      t.text :curriculum
      t.string :email
      t.integer :celular
      t.text :reconocimientos
      t.references :especialidad
      t.string :apellidos

      t.timestamps
    end
    add_index :medicos, :especialidad_id
  end
end
