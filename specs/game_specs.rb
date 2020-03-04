require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative( '../game' )
require_relative( '../hiddenword' )
require_relative( '../player' )
class TestGame < MiniTest::Test

  def setup()
    @player = Player.new("Eugene")
    @hiddenword = HiddenWord.new("catt")
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

def test_hiddenword_letter_count()
  result = @game.hiddenword_letter_count(@game.hiddenword.word)
  assert_equal(3, result)
end

def test_correct_guess()
  @game.add_letter("r")
  @game.add_letter("c")
  @game.add_letter("y")
  result = @game.correct_guess(@game)
  assert_equal(1, result)
end

def test_game_outcome__lose()
  @game.add_letter("r")
  @game.add_letter("w")
  @game.add_letter("q")
  @game.add_letter("s")
  @game.add_letter("z")
  @game.add_letter("h")
  result = @game.game_outcome(@game)
  assert_equal("You lose", result)
end

def test_game_outcome__win()
  @game.add_letter("c")
  @game.add_letter("w")
  @game.add_letter("a")
  @game.add_letter("s")
  @game.add_letter("z")
  @game.add_letter("t")
  result = @game.game_outcome(@game)
  assert_equal("You win", result)
end
end
