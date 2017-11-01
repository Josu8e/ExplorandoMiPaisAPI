class AddReferences < ActiveRecord::Migration[5.1]
  def change

    remove_column :themes_activities, :activities_id

    add_reference :payments, :people , foreign_key:true
    add_reference :payments, :excursions , foreign_key:true

    add_reference :photos, :places , foreign_key:true

    add_reference :excursion_personas, :excursions , foreign_key:true
    add_reference :excursion_personas, :people , foreign_key:true

    add_reference :excursions, :transports , foreign_key:true
    add_reference :excursions, :activities , foreign_key:true

    add_reference :activities, :places , foreign_key:true


    add_reference :service_places, :places , foreign_key:true
    add_reference :service_places, :services , foreign_key:true

    add_reference :themes_activities, :themes , foreign_key:true
    add_reference :themes_activities, :activities , foreign_key:true

    add_reference :tema_personas, :themes , foreign_key:true
    add_reference :tema_personas, :people , foreign_key:true
  end
end
