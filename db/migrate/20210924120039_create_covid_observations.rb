class CreateCovidObservations < ActiveRecord::Migration[6.1]
  def change
    create_table :covid_observations do |t|
      t.date :observation_date
      t.string :province
      t.string :country
      t.datetime :last_update
      t.integer :confirmed
      t.integer :deaths
      t.integer :recovered

      t.timestamps
    end
  end
end
