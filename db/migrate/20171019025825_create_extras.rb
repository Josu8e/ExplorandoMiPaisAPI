class CreateExtras < ActiveRecord::Migration[5.1]
  def change
    create_table :extras do |t|
      t.integer :transport_id
      t.string :nombre

      t.timestamps
    end
  end
end
