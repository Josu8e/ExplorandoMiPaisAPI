class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :servicio
      t.integer :place_id

      t.timestamps
    end
  end
end
