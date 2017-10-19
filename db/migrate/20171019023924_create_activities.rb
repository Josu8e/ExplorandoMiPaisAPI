class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.date :fechaInicio
      t.date :fechaFinal
      t.date :horaLlegada
      t.date :horaSalida
      t.integer :theme_id
      t.integer :place_id


      t.timestamps
    end
  end
end
