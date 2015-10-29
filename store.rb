vogels = [
 {"name" => "Havik", "price" => 200},
 {"name" => "Adelaar", "price" => 500},
 {"name" => "Merel", "price" => 100},
 {"name" => "Parkietje", "price" => 50}
]

puts "Good morning Sir. Here is our list of birds:"
#puts "​*" *​ 80

index = 0

while index < vogels.length
 puts "#{index} #{vogels[index]["name"]}"
 index += 1
end

def choose_bird_type
puts "Fill in the item number of the bird you want to buy (1-4)"
 bird_type = gets.chomp.to_i
 if bird_type <0 || bird_type >3
   puts "U heeft geen geldige invoer gegeven. Kies item 0, 1, 2 of 3"
   return choose_bird_type
 end
 return bird_type
end

bird_type = choose_bird_type

puts "You have selected #{vogels[bird_type]["name"]}"
puts "Een #{vogels[bird_type]["name"]} kost #{vogels[bird_type]["price"]} euro per stuk"
puts "Hoe veel #{vogels[bird_type]["name"]}s wilt u bestellen?"

def choose_number_of_birds
 number_of_birds = gets.chomp.to_i
 if number_of_birds <0
   puts "U heeft geen geldige invoer gegeven. Kies het aantal vogels dat u wilt bestellen."
     return choose_number_of_birds
   end
 if number_of_birds >9
   puts "Zo veel van deze soort vogels hebben we helaas niet op voorraad. We hebben er nog 9 over."
   puts "Hoe veel van deze soort vogels wilt u bestellen?"
     return choose_number_of_birds
   end
 return number_of_birds
end

number_of_birds = choose_number_of_birds

puts "Wat leuk dat u #{number_of_birds} van #{vogels[bird_type]["name"]}s wilt bestellen!"

totaalprijs = number_of_birds * vogels[bird_type]["price"]

puts "Dat kost u dan in totaal: #{totaalprijs} euro"

puts "Typ 1 als u wilt afrekenen of typ 2 als u meer vogels wilt bestellen"

def choose_to_continue_or_quit
 continue_or_quit = gets.chomp.to_i
   if continue_or_quit < 1 || continue_or_quit > 2
     puts "U heeft geen geldige invoer gegeven. Kies aub 1 om af te rekenen of 2 om meer te bestellen"
     return choose_to_continue_or_quit
   end
   if continue_or_quit == 1
     puts "U wordt nu doorgeleid naar de betalingspagina. Dank u wel!"
     return continue_or_quit
   end
   if continue_or_quit == 2
     puts "U wordt nu weer doorverwezen naar de shop"
     return choose_bird_type
   end
end

continue_or_quit = choose_to_continue_or_quit

if continue_or_quit == 1
#puts "​*" *​ 80
puts "Welkom bij de betalingpagina. Hoe wilt u betalen?"
end
