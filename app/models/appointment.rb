class Appointment
    @@all = []
    attr_reader :location , :customer
    def initialize (location, customer)
        @location = location
        @customer = customer
        @@all << self 
    end 
    def self.all
        @@all 
    end 
end 