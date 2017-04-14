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
  attr_reader :guesses_left

  # Initialize
  def initialize(secret_word)
    @secret_word = secret_word.upcase 
    @guesses_left = secret_word.length
    @guess = nil
    @number_of_guesses = 0
    @guessed_words = []
  end

  def feedback(word)
    feedback = ""

    if word.length == 1
      unique_letters = [word]
    else 
      unique_letters = word.chars.uniq
    end 

    @secret_word.each_char { |ch|
      letter_exits = false
      unique_letters.each do |letter|
        if letter == ch
          feedback << letter + " "
          letter_exits = true
        end
      end
      if letter_exits == false
        feedback << "_ "
      end

    }
    return feedback
  end

  # Player can ask the word_guesser how many guesses are left.
  def get_guesses_left
    
    # Game will respond with either how many guesses are left or that "This game is over!"
    if @guesses_left > 0
      p "There are #{@guesses_left.to_s} guesses left in the game."
    else
      p "This game is over!"
    end
  end # end get_guesses_left


  # Player can make a guess
  def make_guess(word)
    guess = word.upcase
    

    # If there are no more guesses left
    if @guesses_left == 0
      
      # Game responds with "The game is over."
      p "This game is over!"

    # If they guessed the word:
    elsif guess == @secret_word
      
      @number_of_guesses += 1

      # Game responds with "Congratulations! You guessed the word in (n) many guesses.
      p "Congratulations! You got the word in #{@number_of_guesses} guesses!"
      
    # else if they already guessed the word:
    elsif @guessed_words.index(guess) != nil
      p "You already guessed that word!"
      p "The secret word is: " + feedback(guess)
      return "You already guessed that word!"

    # Otherwise:
    else

      # Game adds the guessed word to an array of guessed words
      @guessed_words.push(guess)
      @number_of_guesses += 1
      @guesses_left -= 1

      # tell the user how many guesses left
      guesses_left

      # If the number of guesses left is zero,
      if @guesses_left == 0

        p "That was your last guess! Game over."

      # Otherwise, the game gives feedback:
      else

        p "The secret word is: " + feedback(guess)

      end # control flow/guessed_word
    
    end # end control flow/make_guess

  end # end make_guess

  p "The game has started!"


end # end class

# myGame = Word_Guesser.new("Brontosaurus")
# myGame.get_guesses_left
# p myGame.guesses_left

# loop do
#   p "Make a guess"
#   answer = gets.chomp
#   myGame.make_guess(answer)
# end