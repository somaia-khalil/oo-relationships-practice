#      integredint -> desert -> bakery 
 
class Bakery
    @@all = []
    attr_reader :name
    def initialize (name)
        @name = name 
        @@all << self 
    end 
    def self.all 
        @@all 
    end 
    def ingredients
    # should return an array of ingredients for the bakery's desserts
    Integredint.all.select do |int|
        int.dessert.bakery == self
    end
    end
    def desserts
    #should return an array of desserts the bakery makes
        Desserts.all.select do |des| 
            des.bakery == self
        end
    end 
    def average_calories
    # should return a number totaling the average number of calories for the desserts sold at this bakery
        # avarage caloris+ / desserts
         total = 0
        desserts.map do |des|
            toatl += des.calories
        end
        total / desserts.count
    end 
    def shopping_list
    # should return a string of names for ingredients for the bakery
            ineg = Ingredients.all.select do |int|
                int.bakery == self
            end
            ineg.map do |inint|
                inint.name
            end.join(" ")  
    end   
end 