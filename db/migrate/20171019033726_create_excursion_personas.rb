class CreateExcursionPersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :excursion_personas do |t|
      t.integer :excursion_id
      t.integer :person_id

      t.timestamps
    end
  end
end
