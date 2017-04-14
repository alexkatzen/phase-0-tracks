# Word-guessing game requirements:

# Driver code should provide input and output. 
  # i.e. write a class for a computer to use, not a human
  # Driver code bridges gap between user and ruby object.

# Code should simulate two users.
# User 1 enters a word. (Or, this can be a phrase if desired)
# User 2 guesses the word/phrase.
# Guesses are limited to some number that is related to the length of the word.
# Repeated guesses do not count against the user.
# The Guessing user receives continual feedback. For each letter in the guessed word:
  # If that letter exists in the secret word, show that letter at its position in the secret word
  # If that letter does not exist in the secret word, show an underscore.



  # PSEUDOCODE

  # Create a class for the game "Word_Guess"

    # Declare attr_ keywords
      # attr_writer :secret_word 
      # attr_accessor :guesses_left 

    # Initialize the game with the required instance variables.
      # @secret_word (empty until user_one provides it)
      # @guesses_left (empty until user_one provides the secret word)
      # @guessed_words (empty array)
      # @secret_dashes = "_ "*secret_word.length
      # @letters_exist = false (if the user's guesses letters' match any in the secret word)
      # @feedback = nil the feedback returned to the user after each guess


    
    # Ask user_one for a secret word
      # If the provided string is 1 or less characters, ask for a word containing at least 2 letters.
    
    # When a valid secret word has been provided:
      # Set the secret_word instance variable (attr_writer)
      # Set the guesses left to equal the length of the secret word string.(attr_accessor)
      # Print a message indicating that the game has begun! 
      # Print "The secret word is @secret_dashes" (an underscore followed by a space for each letter)

    # In a loop while guesses_left > 0
      # @letters_exist = false
      # @feedback = ""

      # Ask user_two to guess the word: "What's the word?" and the number of @guesses_left
        # If the guess == the @secret_word
          # Puts "Congratulations! You guessed the word! User 2 wins"
          # Break

        # Elsif the guess is in @guessed_words
          # Print "You already guessed that word!"
          # Print "The secret word is @secret_dashes (an underscore followed by a space for each letter)

        # Else  
          # Add the guess to @guessed_words
          # Subtract one from @guesses_left

          # Compare the unique letters from the guess one by one against each letter in the @secret_word:
            # If the letter matches:
              # add the letter followed by a " " to the @feedback string
              # set @letters_exist = true

            # If the letter doesn't match:
              # add an underscore followed by a " " to the @feedback string

          # If @letters_exist = true
            # Print "Hey, looks like some of the letters you wrote are part of the secret word":
            # Print @feedback
          # Else
            # Print "Nope, sorry. The secret word is @secret_dashes

    # Print "User One wins!! Sorry User Two, a loser is you! :^("



      





