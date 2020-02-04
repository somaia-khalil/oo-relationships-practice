class Location
    @@all = []
    attr_reader :name
    def initialize (name)
        @name = name
        @@all << self 
    end 
    def self.all
        @@all 
    end 
    def appointments_at_location
        Appointment.all.select {|appointment| appointment.location == self} 
    end 
    def number_of_client
        appointments_at_location.map {|appointment| appointment.customer}.uniq.count
    end

    def self.least_clients
        # count of client of each location
        self.all.min do |a,b|
            a.number_of_client <=> b.number_of_client
        end 
        # should find which location has the least clients training there. we need to increase the marketing spend for that location!
    end
end 