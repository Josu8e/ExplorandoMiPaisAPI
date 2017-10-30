class AddNamePerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :name, :string
  end
end
