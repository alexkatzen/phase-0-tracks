require_relative 'word_guesser'
  
describe Word_Guesser do
  let(:new_game) {Word_Guesser.new("Brontosaurus")}
  let(:game_over) {Word_Guesser.new("")}

  # Test the game returns the correct # of guesses left for a new game
  it "Tells the user how many guesses are left when asked" do
    expect(new_game.guesses_left).to eq "There are 12 guesses left in the game."
  end

  # Test the game returns "This game is over!" When the # of guesses_left is 0
  it "Reports that the game is over when there are 0 guesses left" do
    expect(game_over.guesses_left).to eq "This game is over!"
  end

end