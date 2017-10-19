class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :monto
      t.date :fecha
      t.integer :person_id
      t.integer :excursion_id

      t.timestamps
    end
  end
end
