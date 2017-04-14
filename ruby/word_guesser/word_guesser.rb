# Word-guessing game requirements:

# Driver code should provide input and output. 
  # i.e. write a class for a computer to use, not a human
  # Driver code bridges gap between user and ruby object.

# Game creator enters a word. (Or, this can be a phrase if desired)
# Player guesses the word/phrase.
# Guesses are limited to some number that is related to the length of the word.
# Repeated guesses do not count against the user.
# The Guessing user receives continual feedback. For each letter in the guessed word:
  # If that letter exists in the secret word, show that letter at its position in the secret word
  # If that letter does not exist in the secret word, show an underscore.
# The user should get a congratulatory message if they win, and a taunting message if they lose.


# PSEUDOCODE

# Creator can make a new game by calling Word_guesser.new
class Word_Guesser


  # Declare any attr attributes
  attr_writer :guess

  # Initialize
  def initialize(secret_word)
    @secret_word = secret_word.upcase 
    @guesses_left = secret_word.length.to_i
    @guess = nil
    @number_of_guesses = 0
  end


  # Player can ask the word_guesser how many guesses are left
  def guesses_left
    
    # Game will respond with either how many guesses are left or that "This game is over!"
    if @guesses_left > 0
      p "There are #{@guesses_left.to_s} guesses left in the game."
    else
      p "This game is over!"
    end
  end # end guesses_left


  # Player can make a guess
  def make_guess(word)
    guess = word.upcase
    

    # If there are no more guesses left
    if guesses_left == 0
      
      # Game responds with "The game is over."
      p "This game is over!"

    # If they guessed the word:
    elsif guess == @secret_word
      
      @number_of_guesses += 1

      # Game responds with "Congratulations! You guessed the word in (n) many guesses.
      p "Congratulations! You got the word in #{@number_of_guesses} guesses!"
      
    
    # If they already guessed the word:
      # Game responds with "You already guessed that word!"
      # The game gives feedback:
        # If some characters are right:
          # Game responds with "Looks like you got some parts right..."
          # Game gives feedback for each character in secret word:
            # Dash for characters that aren't in guessed word.
            # Show the character if it exists in secret word.
        # If no characters are right:
          # Game responds with: "The guess is wrong!"
          # Game gives feedback for each character in secret word:
            # Dash for characters that aren't in guessed word.
    
    # Otherwise:
      # Game adds the guessed word to an array of guessed words
      # Game subtracts 1 from the guesses left.
        # If the number of guesses left is zero, 
          # Game responds with "Game over! Game explodes. Bye Bye."
        # Otherwise, the game gives feedback:
          # If some characters are right:
            # Game responds with "Looks like you got some parts right..."
            # Game gives feedback for each character in secret word:
              # Dash for characters that aren't in guessed word.
              # Show the character if it exists in secret word.
          # If no characters are right:
            # Game responds with: "The guess is wrong!"
            # Game gives feedback for each character in secret word:
              # Dash for characters that aren't in guessed word.
    
    end # end control flow

  end # end make_guess

end # end class

# myGame = Word_Guesser.new("Brontosaurus")
# myGame.make_guess("brontosaurus")
