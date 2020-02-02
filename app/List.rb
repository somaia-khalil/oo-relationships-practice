class List
    @@all = []
    attr_accessor :city_name
    def initialize(city_name)
        @city_name = city_name
        @@all << self
    end
    def self.all
        @@all 
    end 
    def lists
        # returns an array of all trips at a listing 
        trip = Trip.all.select do |trip|
            trip.list == self
        end 
    end
    def guests
        # returns an array of all guests who have stayed at a listing
        lists.map do |trip|
            trip.guest 
        end 
    end
   
    def trip_count
        # returns the number of trips that have been taken to that listing
        lists.count
    end
    def self.find_all_by_city(city) 
        #   - takes an argument of a city name (as a string) and returns all the listings for that city
        trips = Trips.all.select do |aprt|
            aprt.list.city_name == city
        end 
        trips.map do |trip|
            trip.list
        end 
    end
    def self.most_popular
        # finds the listing that has had the most trips
        
        self.all.max do |a,b|
            a.trip_count <=> b.trip_count
        end

    end 

end