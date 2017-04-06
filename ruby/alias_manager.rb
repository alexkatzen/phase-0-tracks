# Create a method 'create_alias' that takes a name in the form of a string with two words separated by space: (fullname)
def create_alias(fullname)

  # Create an array 'given_name' of the two words using Name.split(' ')
  full_name = fullname.split(' ')

  # Identify the first and last names
  first_name = full_name[0]
  last_name = full_name[1]

  # Create a function 'translate' that maps each letter in an array to 
  # the appropriate vowel or consonant:
  def translate(word)  
    
    # add a check for nil, create string to generate random
    if word == nil
      word = "^^^^^^"
    end

    # break the word into an array of letters
    translated = word.chars

    # Store an ordered array of vowels and consonants including both upper and lower case characters
    vowels_and_consonants = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U', 'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 'B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z']
    
    # .map! each character in the array to the appropriate next character.
    translated.map! do |letter|

      # find the index position of the letter in the vowels and consonants array
      untranslated_index = vowels_and_consonants.index(letter)
      
      # If the letter isn't in the vowels and consonants array, set the character to a random letter.
      if untranslated_index == nil
        letter = vowels_and_consonants[rand(52)]
      
      elsif letter == 'u'
        letter = 'a'

      elsif letter == 'U'
        letter = 'A'

      elsif letter == 'z'
        letter = 'b'

      elsif letter == 'Z'
        letter = 'B'

      else
       letter = vowels_and_consonants[untranslated_index+1] 
      end

    end # end translating block

    return translated.join('')
  
  end # end translate

  encrypted_first_name = translate(first_name)
  encrypted_last_name = translate(last_name)
  
  return "#{encrypted_last_name} #{encrypted_first_name}"

end # end create_alias

puts create_alias('Felicia Torres') # Should become 'Vussit Gimodoe'

