class RemoveColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :excursion_personas, :excursion_id
    remove_column :excursion_personas, :person_id


    remove_column :tema_personas, :theme_id
    remove_column :tema_personas, :person_id

    remove_column :themes_activities, :theme_id

    remove_column :activities, :place_id
    remove_column :photos, :place_id

    remove_column :service_places, :place_id
    remove_column :service_places, :service_id
  end
end
