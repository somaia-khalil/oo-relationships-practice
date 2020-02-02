# integredint -> dessert -> bakery 

class Ingredients
    @@all = []
    attr_reader :name , :calori 

    def initialize(calori, dessert , name)
        @calori = calori
        @dessert = dessert
        @name = name
        @@all << self
    end 
    def self.all 
        @@all 
    end
    def dessert
    # should return a dessert object for that ingredient
    @dessert
    end 
    def bakery
    # should return the bakery object for the bakery that uses that ingredient
        dessert.bakery
    end 

    def self.find_all_by_name(ingredient)
    # should take a string argument return an array of all ingredients that include that string in their name
    #  self.find_all_by_name('chocolate') might return ['chocolate sprinkles',
    #   'chocolate mousse', 'chocolate']
    # - make sure you aren't just looking for exact matches (like 'chocolate' ==
    #   'chocolate')
    @@all.select do |integred|
        integred.name.include?(ingredient)
    end
    end
end 