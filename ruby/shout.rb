module Shout
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :^D"
  end

end

# Elsewhere: require 'shout', then:
puts Shout.yell_angrily("Why didn't I know about modules earlier?")
puts Shout.yelling_happily("I am very happy to be here")