require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative( '../game' )
require_relative( '../hiddenword' )
require_relative( '../player' )
class TestGame < MiniTest::Test

  def setup()
    @player = Player.new("Player")
    @hiddenword = HiddenWord.new("Caterpillar")
    @game = Game.new("Eugene", "cat", ["m", "t","i", "o", "e", "b"])

  end


end

  # unguessed_letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
