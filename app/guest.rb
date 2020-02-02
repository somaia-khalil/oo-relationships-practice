class Guest
    attr_reader :name 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 
    def self.all
        @@all 
    end
    def listings
        # returns an array of all listings a guest has stayed at
        trips.map do |trip|
            trip.list 
        end 
    end
    def trips
        # returns an array of all trips a guest has made 
        trip = Trip.all.select do |trip|
            trip.guest == self 
        end
    end 
        
        
        def trip_count
        # returns the number of trips a guest has taken
         trips.count
        end
        
        def self.pro_traveller
        #     # returns an array of all guests who have made over 1 trip
        #     @@all.select do |guest|
        #         trip = Trip.all.select do |trip|
        #         trip.gust == guest
        #         end
        #         trip.count > 1
        #     end 

            @@all.select do |guest|
                guest.trip_count > 1 
            end 

        end
        def self.find_all_by_name(name) 
            # takes an argument of a name (as a string), returns the all guests with that name
            @@all.select do |guest|
                guest.name == name
            end 
        end
end