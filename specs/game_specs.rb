require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative( '../game' )
require_relative( '../hiddenword' )
require_relative( '../player' )
class TestGame < MiniTest::Test

  def setup()
    @player = Player.new("Eugene")
    @hiddenword = HiddenWord.new("cat")
    @game = Game.new(@player, @hiddenword, [])

  end

def test_guess_letters_array()
  @game.add_letter("c")
  assert_equal(["c"], @game.guessed_letters)
end

def test_remove_guessed_letters()
  @game.add_letter("c")
  result = @hiddenword.get_unguessed_letters(@game.guessed_letters)
  assert_equal(["a", "b", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], result)
end

def test_player_incorrect_guess()
  @game.add_letter("r")
  @game.add_letter("c")
  @game.add_letter("y")
  @game.incorrect_guess(@game)
  assert_equal(4, @player.lives)
end

def test_outcome__player_win()
  @game.add_letter("r")
  @game.add_letter("c")
  @game.add_letter("a")
  @game.add_letter("t")
  assert_equal("Game lost", outcome())
end

end
