class Shoppingcart
   attr_accessor :bird_chosen, :bird_chosen_price, :number_of_birds
   def initialize bird_chosen, bird_chosen_price, number_of_birds
     @bird_chosen = []
     @bird_chosen_price = []
     @number_of_birds = []
   end
   
end
