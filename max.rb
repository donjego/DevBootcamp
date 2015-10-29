def max2(getal1, getal2)
  if getal1 > getal2
    max_getal = getal1
  else
    max_getal = getal2
end

def programma
  puts "Geef 2 getallen op a.u.b."
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  max2 (a, b)
end

programma
puts "einde!"
