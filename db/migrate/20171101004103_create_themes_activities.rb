class CreateThemesActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :themes_activities do |t|
      t.integer :theme_id
      t.integer :activities_id

      t.timestamps
    end
  end
end
