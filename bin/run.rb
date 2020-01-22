require_relative '../config/environment'

cli = CommandLineInterface.new
cli.greet

flight = Flight.new
pilot = Pilot.new
passenger = Passenger.new

