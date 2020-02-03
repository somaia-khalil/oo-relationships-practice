#    integredint -> desert -> bakery 

class Desserts
    @@all = [ ]
    
    def initialize (name , bakery)
        @bakery = bakery
        @name = name
        @@all << self
    end 
    def self.all
        @@all  
    end 
    def ingredients
    # should return an array of ingredients for the dessert
    Ingredients.all.select do |int|
        int.dessert == self
    end 
    def bakery
    # should return the bakery object for the dessert
    @bakery 
    end 
    def calories
    # should return a number totaling all the calories for all the ingredients included in that dessert
    total = 0
    ingredients.each do |int|
        total += int.calori
    end
    total
    end
end 