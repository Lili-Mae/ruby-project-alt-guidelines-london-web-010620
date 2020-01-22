def flight_duration

    user_input_name = gets.chomp
    Flight.all.find_by(passenger_id : user_input_name.id)

end