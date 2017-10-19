class CreateTemaPersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :tema_personas do |t|
      t.integer :theme_id
      t.integer :person_id

      t.timestamps
    end
  end
end
