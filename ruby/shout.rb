# module Shout
  
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :^D"
#   end

# end

# Elsewhere: require 'shout', then:
# puts Shout.yell_angrily("Why didn't I know about modules earlier?")
# puts Shout.yelling_happily("I am very happy to be here")



# mixin version of Shout:

module Shout
  
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :^D"
  end

end

class Macho_Man
  include Shout

  def angry_macho_man(words)
    puts yell_angrily(words) + " OOOHH YEEEAHH!@!(#@$!"
  end

  def happy_macho_man(words)
    puts yelling_happily(words) + " OOOHH YEEEAHH!!! ^__^"
  end

end

class PE_Teacher
  include Shout

  def angry_PE_teacher(words)
    puts yell_angrily(words) + " That'll be 20 laps around the track!!"
  end

  def happy_PE_teacher(words)
    puts yelling_happily(words) + " You should go to the pros!"
  end

end


# DRIVER CODE

randy = Macho_Man.new
randy.angry_macho_man("the MACHO MAN is NOT HAPPY with your decision! I am the CREAM OF THE CROP")
randy.happy_macho_man("We got sumthin' in common, ZEUS! The Macho Man will stand one MILLION percent right behind YOU!")

al = PE_Teacher.new
al.angry_PE_teacher("You're late to class!")
al.happy_PE_teacher("You are quite the natural at badminton. ")
