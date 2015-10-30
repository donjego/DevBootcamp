#class Shoppingcart
#   attr_accessor :bird_chosen, :bird_chosen_price, :number_of_birds, :totaalprijs
#   def initialize bird_chosen, bird_chosen_price, number_of_birds, totaalprijs
#     @cart = [bird_chosen, bird_chosen_price, number_of_birds, totaalprijs]
#   end
#end

#require "./birdshop.rb"

class Shoppingcart
   attr_accessor :items
   def initialize
     @items = []
   end

   def add_item bird, number_of_birds
     item = {
       bird: bird,
       number_of_birds: number_of_birds
     }
     @items.push item

     return item
   end

#total_price = items[:number_of_birds] * items[:bird].price


end
