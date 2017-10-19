class CreateThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :themes do |t|
      t.string :nombre
      t.string :descripcion
      t.string :foto
      t.integer :tema_persona_id

      t.timestamps
    end
  end
end
