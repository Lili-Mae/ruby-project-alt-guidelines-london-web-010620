require 'faker'

def random_data

    pa1 = Passenger.create(
        name: Faker::Name.name, 
        age: Faker::Number.between(from: 1, to: 100), 
        passport_number: Faker::Alphanumeric.alphanumeric(number: 10)
    )

    pi1 = Pilot.create(
        name: Faker::Name.name, 
        age: Faker::Number.between(from: 25, to: 45)
    )

    fl1 = Flight.create(
        flight_number: Faker::Alphanumeric.alphanumeric(number: 4),
        duration: Faker::Number.between(from: 1, to: 800),
        destination: Faker::Address.country,
        price: Faker::Number.between(from: 1, to: 2000),
        pilot_id: pi1.id,
        passenger_id: pa1.id
    )

end 

random_data
