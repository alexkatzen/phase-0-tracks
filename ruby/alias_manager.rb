# Create a method 'alias_generator' that takes a name in the form of a string with two words separated by space: (fullname)
  # Create an array 'given_name' of the two words using Name.split(" ")

  # Store an array of vowels in including both the upper and lower case variations
  # Store an array of consonants including both the upper and lower case variations

  # Create a function 'translate' that maps each letter in a string to 
  # the appropriate vowel or consonant:
    
    # If the letter is a vowel, map! that that letter to the next vowel
      # If the letter is a 'u' map! the letter to an 'a'
      # Elsif the letter is a 'U' map! the letter to an 'A' 
      # Otherwise, get the index position of the of the letter in the vowels array, and map! it to the letter at the next index position.

    # Elsif the letter is a consonant, map! that character to the next consonant
      # If the letter is a 'z', map! the letter to a 'b'
      # Elsif the letter is a 'Z', map! the letter to a 'B'
      # Otherwise, get the index position of the letter in the consonants array, and map! it to the letter at the next index position.

    # Else, if the character is not a character in either of the arrays, e.g. a number, assign a random vowel

  # Translate the last_name argument and set it to 'encrypted_first_name'
  # Translate the first_name argument and set it to 'encrypted_last_name'

  # return 'encrypted_first_name' + 'encrypted_last_name'
