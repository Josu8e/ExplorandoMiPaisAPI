class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :monto
      t.date :fecha

      t.timestamps
    end
  end
end
