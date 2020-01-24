class Flight < ActiveRecord::Base
    belongs_to :passengers
    belongs_to :pilots    
end