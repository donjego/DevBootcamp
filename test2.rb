class Pet
  attr_accessor :name, :age
  def sound
    return "..."
  end
end

class Dog < Pet
  def sound
    return "Woef"
  end
end

class Cat < Pet
  def sound
    return "Miauw"
  end
end

lassie2 = Dog.new()
lassie2.name = "Lassie"
puts lassie2.sound

snoes2 = Cat.new()
snoes2.name = "Snoes"
puts snoes2.sound

liz = Pet.new()
liz.name = "Lizzie the Lizzard"
puts liz.sound
