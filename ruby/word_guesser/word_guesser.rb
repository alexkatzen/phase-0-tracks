# Creator can make a new game by calling Word_Guesser.new and passing in a secret word
class Word_Guesser

  # Declare any attr attributes
  attr_writer :guess
  attr_reader :guesses_left

  # Initialize
  def initialize(secret_word)
    @secret_word = secret_word.upcase 
    @guesses_left = secret_word.length
    @number_of_guesses = 0
    @guessed_words = []
    p "The game has begun!!"
  end

  # Method to get feedback
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
      p "There are #{@guesses_left} guesses left in the game."
    else
      p "This game is over!"
    end
  end # end get_guesses_left


  # Player can make a guess
  def make_guess(word)
    guess = word.upcase
    
    # If the game is over, let the player know.
    if @guesses_left == 0
      p "This game is over!"

    # Congratulatory message if they got it.
    elsif guess == @secret_word
      @number_of_guesses += 1
      p "Congratulations! You got the word in #{@number_of_guesses} guesses!"
      
    # If they already guessed the word:
    elsif @guessed_words.index(guess) != nil
      p "You already guessed that word!"
      p "The secret word is: " + feedback(guess)
      return "You already guessed that word!"

    # Count the guess and provide feedback on it.
    else

      @guessed_words.push(guess)
      @number_of_guesses += 1
      @guesses_left -= 1
      
      p "Correct letters:"
      p feedback(guess)

      # If that was the last guess, let the player know.
      if @guesses_left == 0
        p "That was your last guess! Game over."

      else
        get_guesses_left
        
      end # control flow/guessed_word
    end # end control flow/make_guess
  end # end make_guess
end # end class


# DRIVER CODE
myGame = Word_Guesser.new("Brontosaurus")

myGame.get_guesses_left
puts ""
myGame.make_guess("a")
myGame.make_guess("rstlne")
myGame.make_guess("aeiou")
myGame.make_guess("computer")
myGame.make_guess("does")
myGame.make_guess("not")
myGame.make_guess("compute")
myGame.make_guess("pls")
myGame.make_guess("help")
myGame.make_guess("me")
myGame.make_guess(":(")
myGame.make_guess("argggh!")

puts ""
puts "* "*20
puts ""

newGame = Word_Guesser.new("Bill Gates")

newGame.get_guesses_left
puts ""
newGame.make_guess("a")
newGame.make_guess("rstlne")
newGame.make_guess("aeiou")
newGame.make_guess("computer")
newGame.make_guess("bill gates")