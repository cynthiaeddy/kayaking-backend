class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :water_type
      t.string :start_date
      t.string :end_date
      t.string :image
      t.integer :like

      t.timestamps
    end
  end
end
