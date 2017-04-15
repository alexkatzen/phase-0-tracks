require_relative 'word_guesser'
  
describe Word_Guesser do
  let(:new_game) {Word_Guesser.new("Brontosaurus")}
  let(:game_over) {Word_Guesser.new("")}

  # Test the game returns the correct # of guesses left for a new game
  it "Tells the user how many guesses are left when asked" do
    expect(new_game.guesses_left).to eq 12
  end

  # Test the game reports to the user that "This game is over!" they call "Get_guesses_left"
  it "Reports that the game is over when there are 0 guesses left" do
    expect(game_over.get_guesses_left).to eq "This game is over!"
  end

  # Test that a dead game will return "This game is over!" when you try to guess its word.
  it "Dead game tells the user the game is over when you try to guess its secret word" do
    myGame = Word_Guesser.new("cat")
    myGame.make_guess("fwr")
    myGame.make_guess("deg")
    myGame.make_guess("ceg")
    expect(myGame.make_guess("unicorn")).to eq "This game is over!"
  end

  it "Returns the correct congratulations message with a correct guess" do
    expect(new_game.make_guess("brontosaurus")).to eq "Congratulations! You got the word in 1 guesses!"
  end

  it "Returns correct feedback for a guessed word" do
    expect(new_game.make_guess("o")).to eq "There are 11 guesses left in the game."
  end

  it "Knows if you guessed a word already, and provides the appropriate feedback" do
    new_game.make_guess("saurus")
    expect(new_game.make_guess("saurus")).to eq "You already guessed that word!"
  end
end