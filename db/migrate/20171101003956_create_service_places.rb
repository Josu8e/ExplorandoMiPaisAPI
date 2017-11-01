class CreateServicePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :service_places do |t|
      t.integer :place_id
      t.integer :service_id

      t.timestamps
    end
  end
end
