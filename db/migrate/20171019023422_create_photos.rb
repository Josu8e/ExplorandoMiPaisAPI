 class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :foto
      t.integer :place_id

      t.timestamps
    end
  end
end
