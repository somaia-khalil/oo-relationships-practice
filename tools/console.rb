require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

numbers = [0,1,2,3,4,5,6,7] 

# guests = numbers.map do |i|
#   Guest.new("name" + i.to_s)
#   end

#   list = numbers.map do |i|
#     List.new("apartment" + i.to_s)
#     end

#   trips  = numbers.map do |i|
#       Trip.new("trip_name"+ i.to_s ,list[4],guests[i])
#       end

bakeries = numbers.map do |i|
  Bakery.new("bakery"+i.to_s)
  end

desserts = numbers.map do |i|
  Desserts.new("desert"+i.to_s,bakeries[i])
  end

ingredients = numbers.map do |i|
  Ingredients.new( i , desserts[i], "ingredient"+i.to_s )
  end




binding.pry
0