# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
puts "THE TIME IS 5:36pm".swapcase

# - - - - - - - - - -

puts "zom".insert(1, "o")
# => “zoom”
puts "San Francisc".insert(-1, "o")

# - - - - - - - - - -

puts "enhance".center(15)
# => "    enhance    "
puts "enhance".center(15, '-')

# - - - - - - - - - -

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
puts "make me loud".upcase

# - - - - - - - - - -

puts "the usual".concat(" suspects")
#=> "the usual suspects"
puts "Next month is ".concat("May")

# another culprit:
puts "the usual".insert(9, " suspects")

# - - - - - - - - - -

puts " suspects".sub(" suspects", "the usual suspects")
# => "the usual suspects"
puts " A    , Bravo, Charlie".sub(" A    , Bravo, Charlie", "Alpha, Bravo, Charlie")

# - - - - - - - - - -

puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
puts "The Bay Areaa".chop

# - - - - - - - - - -

puts "The mystery of the missing first letter".slice!("he mystery of the missing first letter")
# => "he mystery of the missing first letter"
puts "The quick brown fox jumped over the lazy dog".slice(" jumped over the lazy dog")

# - - - - - - - - - -

puts "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"
puts "Ohhh Heeeeeeeeeeeeeeeeeeeeyyyyy".squeeze("e")

# - - - - - - - - - -

puts "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 = integer ordinal of 'z' in the ASCII table
# opposite method for this is 122.chr
puts "a".ord
puts 122.chr

# - - - - - - - - - -

puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4
puts "Ohhh Heeeeeeeeeeeeeeeeeeeeyyyyy".count("e")
