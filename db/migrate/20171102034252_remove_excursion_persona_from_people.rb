class RemoveExcursionPersonaFromPeople < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :excursion_persona_id
  end
end
