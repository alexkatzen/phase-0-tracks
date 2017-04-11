#

module Flight
  
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude}"
  end
  # "When we're writing a module as a mixin designed to add instance 
  # methods to a class, we don't use the self keyword. We can define 
  # our module methods the same way we would write instance methods 
  # inside of a class.

end

# Declare classes
class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(3000)