class Dog
#name
def name
return 'Lassie'
end

lassie = Dog.new()
p lassie
p lassie.name





class Dog
#setter
def name=(name)
  @name = name
end

#getter
def name
return @name
end
end

lassie = Dog.new()
lassie.name = "Lassie"
p lassie.name

benji = Dog.new()
benji.name = "Benji"
p benji.name





class Dog
#attribute accessor
  attr_accessor :name

  lassie = Dog.new()
  lassie.name = "Lassie"
  p lassie.name

  benji = Dog.new()
  benji.name = "Benji"
  p benji.name







  class Dog
  #attribute accessor
    attr_accessor :name, :age
    def play
      return "#{@name} speelt"
    end
    def sound
      puts "Woef!"
    end
  end

  class Human
    attr_accessor :name, :age
    def play
      return "#{@name} speelt met computer"
    end
    def sound
      return "#{@name} wil geen geluid maken"
    end
  end

  class Parrot
    attr_accessor :name, :color, :amount_of_legs
    def sound
      puts "#{name} wil een koekje"
    end
  end



    lassie = Dog.new()
    lassie.name = "Lassie"
    p lassie.name
    p lassie.play
    p lassie.sound

    benji = Dog.new()
    benji.name = "Benji"
    p benji.sound

    jego = Human.new()
    jego.name = "Jego"
    p jego.sound

    lorre = Parrot.new()
    lorre.name = "Koekie"
    p lorre.sound





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
