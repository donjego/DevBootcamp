class Birds
 attr_accessor :birdname, :price
 def initialize birdname, price
   @birdname = birdname
   @price = price
 end
end

class Pets < Birds
end

class Exotic < Birds
end

class Prey < Birds
end

class Voorraad
  attr_accessor :birds
  def initialize
    @birds = [
      Pets.new("Parkietje", 50),
      Prey.new("Havik", 250),
      Prey.new("Adelaar", 50),
      Exotic.new("Parrot", 100)
    ]
  end
end
