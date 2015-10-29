require "./birds.rb"
require "./cart.rb"

puts "Welcome to the best pet shop in the world!"

def choose_bird_type
puts "Fill in the item number of the bird you want to buy (1-4)"
 bird_type = gets.chomp.to_i
 if bird_type <1 || bird_type >4
   puts "You did not provide a proper item code. Please choose item 1, 2, 3 of 4"
   return choose_bird_type
 end
 return bird_type-1
end

def choose_number_of_birds
 number_of_birds = gets.chomp.to_i
 if number_of_birds <0
   puts "You did not provide valid input. Please type the number of birds you want to order."
     return choose_number_of_birds
   end
 if number_of_birds >9
   puts "Unfortunately we only have 9 of these birds left."
   puts "How many would you like to order?"
     return choose_number_of_birds
   end
 return number_of_birds
end

def choose_to_continue_or_quit
 continue_or_quit = gets.chomp.to_i
   if continue_or_quit < 1 || continue_or_quit > 2
     puts "U heeft geen geldige invoer gegeven. Kies aub 1 om af te rekenen of 2 om meer te bestellen"
     return choose_to_continue_or_quit
   else
     return continue_or_quit
   end
end

def checkout
  puts "You've reached the checkout page. Well done!"
  puts "You will now be paying "
end




def process
puts "We have the following birds on stock:"

voorraad = Voorraad.new()
voorraad.birds.each_with_index do |birds, index|
  puts "#{index +1}) #{birds.birdname} (#{birds.price} euro per bird)"
end

bird_type = choose_bird_type
bird_chosen = voorraad.birds[bird_type].birdname
bird_chosen_price = voorraad.birds[bird_type].price

puts "You have selected #{bird_chosen}"
puts "A #{bird_chosen} costs #{bird_chosen_price} euro each"
puts "How many #{bird_chosen}s do you want to order?"

number_of_birds = choose_number_of_birds
puts "How nice that you want to order #{number_of_birds} #{bird_chosen}s!"

totaalprijs = number_of_birds * bird_chosen_price
puts "That will make a total price of: #{totaalprijs} euro"

puts "Type 1 if you want to proceed to checkout or 2 if you want to order more birds"
continue_or_quit = choose_to_continue_or_quit

#cart = Shoppingcart.new(bird_chosen, bird_chosen_price, number_of_birds)
#def add(animal)
#    @animal_array.push animal
#end

  if continue_or_quit == 1
    puts "You will now be forwarded to the checkout page. Thanks!"
    return checkout
  end
  if continue_or_quit == 2
    puts "You will now be forwarded to the shop again"
    return process
  end
end


process
