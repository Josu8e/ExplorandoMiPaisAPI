class CreateTransports < ActiveRecord::Migration[5.1]
  def change
    create_table :transports do |t|
      t.string :foto
      t.string :descripcion

      t.timestamps
    end
  end
end
