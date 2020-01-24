require 'faker'

    5.times do random_data

    pa1 = Passenger.create(
        name: Faker::Name.name, 
        passport_number: Faker::Alphanumeric.alphanumeric(number: 10)
    )

    pi1 = Pilot.create(
        name: Faker::Name.name
    )

    fl1 = Flight.create(
        flight_number: Faker::Alphanumeric.alphanumeric(number: 4),
        duration: Faker::Number.between(from: 1, to: 800),
        destination: Faker::Address.country,
        price: Faker::Number.between(from: 1, to: 2000),
        passenger_id: pa1
    )
