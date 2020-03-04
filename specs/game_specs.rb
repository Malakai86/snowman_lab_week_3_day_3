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

  def test_guess_word()
    result = @game.guess_word(@game.hiddenword, @game.guessed_letters)
    assert_equal("**t", result)
end
end
