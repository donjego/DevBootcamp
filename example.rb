puts "Type je naam in aub"
naam = gets.chomp

puts "Vul je leeftijd in"
leeftijd = gets.chomp.to_i

def vraag_geslacht
  puts "Wat is je geslacht? (m/v)"
  geslacht = gets.chomp
  if (geslacht == "m" || geslacht == "M")
    return "m"
  elsif (geslacht == "v" || geslacht == "V")
    return "v"
  else
    puts "Dat is geen geldige invoer"
    return vraag_geslacht
  end
end

geslacht = vraag_geslacht

if (geslacht == "m" || geslacht == "M") && leeftijd >= 18
  puts "Goedemorgen meneer #{naam}!"
elsif (geslacht == "v" || geslacht == "V") && leeftijd >= 18
  puts "Goedemorgen mevrouw #{naam}!"
else
  puts "Goedemorgen #{naam}!"
end

honderd = 2015 - leeftijd + 100
puts "Je wordt 100 in het jaar: #{honderd}"

puts "Waar woon je?"
woonplaats = gets.chomp

if woonplaats == "Amsterdam"
  puts "Wat leuk! Ik woon ook in #{woonplaats}!"
else
  puts "Waarom woon je daar? Amsterdam is veel leuker joh!"
end


