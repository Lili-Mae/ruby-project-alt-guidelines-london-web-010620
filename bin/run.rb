require_relative '../config/environment'

cli = CommandLineInterface.new
cli.greet

cli.purchase_a_flight 

cli.check_flight_duration

cli.change_name

cli.delete_booking