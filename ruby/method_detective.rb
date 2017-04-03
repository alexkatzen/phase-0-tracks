# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
puts "THE TIME IS 5:36pm".swapcase

# - - - - - - - - - -

"zom".insert(1, "o")
# => “zoom”
puts "San Francisc".insert(-1, "o")

# - - - - - - - - - -

"enhance".center(15)
# => "    enhance    "
puts "enhance".center(15, '-')

# - - - - - - - - - -

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
puts "make me loud".upcase

# - - - - - - - - - -

"the usual".concat(" suspects")
#=> "the usual suspects"
puts "Next month is ".concat("May")

# another culprit:
puts "the usual".insert(9, " suspects")

# - - - - - - - - - -

 " suspects".sub(" suspects", "the usual suspects")
# => "the usual suspects"
puts " A    , Bravo, Charlie".sub(" A    , Bravo, Charlie", "Alpha, Bravo, Charlie")

# - - - - - - - - - -

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4