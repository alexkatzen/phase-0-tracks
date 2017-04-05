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
    
    # break the word into an array of letters
    untranslated = word.chars

    # Store an array of vowels in including both the upper and lower case variations
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  
    # Store an array of consonants including both the upper and lower case variations
    consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 'B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z']
    
    # If the letter is a vowel, map! that that letter to the next vowel
      
      # If the letter is a 'u' map! the letter to an 'a'
      # Elsif the letter is a 'U' map! the letter to an 'A'
      # Otherwise, get the index position of the of the letter in the vowels array, and map! it to the letter at the next index position.

    # Elsif the letter is a consonant, map! that character to the next consonant
      # If the letter is a 'z', map! the letter to a 'b'
      # Elsif the letter is a 'Z', map! the letter to a 'B'
      # Otherwise, get the index position of the letter in the consonants array, and map! it to the letter at the next index position.

    # Else, if the character is not a character in either of the arrays, e.g. a number, assign a random vowel

    return untranslated.join('')
  
  end # end translate

  # Translate given_name[0] and set it to 'encrypted_last_name'
  # Translate given_name[1] and set it to 'encrypted_first_name'
  

  # return 'encrypted_first_name' + 'encrypted_last_name'

end # end create_alias

p create_alias('Felicia Torres') # Should become 'Vussit Gimodoe'