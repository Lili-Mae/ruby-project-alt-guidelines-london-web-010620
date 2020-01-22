class CreatePilotsFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :pilots_flights do |t|
      t.integer :pilot_id
      t.integer :flight_id
    end
  end
end
