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

# bakeries = numbers.map do |i|
#   Bakery.new("bakery"+i.to_s)
#   end

# desserts = numbers.map do |i|
#   Desserts.new("desert"+i.to_s,bakeries[i])
#   end

# ingredients = numbers.map do |i|
#   Ingredients.new( i , desserts[i], "ingredient"+i.to_s )
#   end


trianer1 = Trainer.new("Florian")
trianer2 = Trainer.new("Sumaya")
trianer3 = Trainer.new("stephen")
trianer4 = Trainer.new("Carlos")
trianer6 = Trainer.new("Mitchel")
trianer7 = Trainer.new("Willim")

customer1 = Customer.new("Florian")
customer2 = Customer.new("Sumaya")
customer3 = Customer.new("stephen")
customer4 = Customer.new("Carlos")
customer6 = Customer.new("Mitchel")
customer7 = Customer.new("Willim")

location1 = Location.new("USA")
location2 = Location.new("Germany")

appointment1 = Appointment.new(location1 , customer1)
appointment2 = Appointment.new(location2 , customer2)
appointment3 = Appointment.new(location1 , customer4)
appointment4 = Appointment.new(location2 , customer2)
appointment6 = Appointment.new(location2 , customer4)
appointment7 = Appointment.new(location2 , customer1)



binding.pry
0