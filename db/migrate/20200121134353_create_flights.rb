class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.integer :duration
      t.string :destination
      t.integer :price
      t.integer :passenger_id
    end
  end
end
