class Trip
    @@all = [ ]
    attr_accessor :trip_name , :list, :guest 
    def initialize(trip_name,list,guest)
        @trip_name = trip_name
        @list =list
        @guest = guest
        @@all << self
    end
    def self.all 
        @@all 
    end
   

end