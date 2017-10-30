class AddForeigns < ActiveRecord::Migration[5.1]
  def change
    #add_reference: tablaorigen,tabladestino,foreign_key:

    add_reference :photos, :places, foreign_key:true
    add_reference :services, :places, foreign_key:true

    add_reference :themes, :tema_personas, foreign_key:true


    add_reference :people, :tema_personas, foreign_key: true
    add_reference :people, :excursion_personas, foreign_key:true

    add_reference :activities, :places, foreign_key: true
    add_reference :activities, :themes, foreign_key: true


    add_reference :excursions, :excursion_personas, foreign_key:true
    add_reference :excursions, :activities, foreign_key:true
    add_reference :excursions,:transports, foreign_key:true

    add_reference :payments, :people, foreign_key:true
    add_reference :payments, :excursions, foreign_key:true

    add_reference :extras, :transports, foreign_key:true


    





  end
end
