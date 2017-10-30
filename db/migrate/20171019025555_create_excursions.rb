class CreateExcursions < ActiveRecord::Migration[5.1]
  def change
    create_table :excursions do |t|
      t.string :video
      t.string :foto
      t.integer :cupoMax
      t.string :descripcion
      t.integer :encargado
      t.integer :rangoCancelacion
      t.integer :excursion_persona_id
      t.integer :activity_id
      t.integer :transport_id
      t.timestamps
    end
  end
end
