class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :correo
      t.string :foto
      t.string :contrasenha
      t.integer :excursion_persona_id


      t.timestamps
    end
  end
end
