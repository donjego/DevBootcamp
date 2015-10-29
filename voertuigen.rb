#klasse voertuigen
#vliegtiug,auto,fiets, boot
#bewegen
#geluid
#wielen
#max speed
#  attr_accessor :voertuig_name

class Voertuig
  attr_accessor :wheel_amount, :max_speed
  def wheel_amount
    return "heeft 4 wielen"
  end
  def move
    return "Rijdt"
  end
  def sound
  end
end

class Auto < Voertuig
  def sound
    return "zegt: vroem vroem"
  end
  def max_speed
    return "kan maximaal #{max_speed} km/u"
  end
end

class Vliegtuig < Voertuig
  def sound
    return "zegt: whaaaaaa"
  end
  def move
    return "Vliegt maximaal #{max_speed} km/u"
  end
end

class Fiets < Voertuig
  def sound
    return "is stil"
  end
  def move
    return "rijdt maximaal #{max_speed} km/u"
  end
end

airbus = Vliegtuig.new()
airbus.max_speed = 1500
airbus.wheel_amount = 2
p airbus.sound
p airbus.move

bike = Fiets.new()
bike.max_speed = 30
bike.wheel_amount = 2
p bike.move
p bike.sound

peugeot = Auto.new()

p peugeot.sound
p peugeot.wheel_amount
