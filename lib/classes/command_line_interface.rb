class CommandLineInterface

    def greet
        puts 'Welcome to Flight Master, the best resource for flight information in the world!'
    end

    def purchase_a_flight

        puts "Please enter your name to purchase a flight"
        name_input = gets.chomp
    
        puts "Please enter your passport number"
        passport_number_input = gets.chomp
    
        puts "Please enter your desired flight number"
        flight_number_input = gets.chomp
    
        new_passenger = Passenger.create(name: name_input, passport_number: passport_number_input)
    
        new_flight = Flight.create(flight_number: flight_number_input, duration: rand(10..400), destination: Faker::Address.country, price: Faker::Number.between(from: 1, to: 2000), passenger_id: new_passenger.id)
    
        puts "Thank you for purchasing flight #{flight_number_input}"
    
    end
    
    def check_flight_duration
    
        puts "Please enter your name to check your flight duration"
        user_name_input = gets.chomp
    
        passenger = Passenger.find_by(name: user_name_input)
    
        puts "Your flight will be #{passenger.flights.first.duration} minutes long"

    end

    def change_name

        puts "Please enter your name to update the booking"
        name_input = gets.chomp

        user = Passenger.find_by(name: name_input)

        puts "Please enter your preferred name"
        preferred_name = gets.chomp

        user.name = preferred_name 
        user.save

        puts "You have now changed the name on your booking to #{preferred_name}"

    end

    def delete_booking
        
        puts "Please enter your name to delete your flight"
        users_name = gets.chomp

        user = Passenger.find_by(name: users_name)

        user.flights.first.destroy

        puts "Your booking has successfully been cancelled"

    end


end