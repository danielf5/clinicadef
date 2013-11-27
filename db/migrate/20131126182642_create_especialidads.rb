class CreateEspecialidads < ActiveRecord::Migration
  def change
    create_table :especialidads do |t|
      t.text :nombre

      t.timestamps
    end
  end
end
