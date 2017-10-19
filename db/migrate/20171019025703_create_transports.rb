class CreateTransports < ActiveRecord::Migration[5.1]
  def change
    create_table :transports do |t|
      t.string :foto
      t.string :descripcion
      t.integer :excursion_id

      t.timestamps
    end
  end
end
