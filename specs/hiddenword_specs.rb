require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative( '../game' )
require_relative( '../hiddenword' )
require_relative( '../player' )
class TestHiddenWord < MiniTest::Test

def setup()

  @hiddenword = HiddenWord.new("Caterpillar")
  @game = Game.new("Eugene", "cat", ["m", "t","i", "o", "e", "b"])

end

def test_hiddenword_is_word
  assert_equal("Caterpillar", @hiddenword.word)
end


def test_is_letter_correct
  result = @hiddenword.letter_correct(@game.guessed_letters, @game.hiddenword)
  assert_equal(true, result)
end

def test_word_sub()
word = @hiddenword.turn_word_to_array(@game.hiddenword)
  @hiddenword.word_sub(word, @game.guessed_letters)
  assert_equal("**t", @hiddenword.display)
end

def test_turn_word_to_array()
  result = @hiddenword.turn_word_to_array(@game.hiddenword)
  assert_equal(["c","a", "t"], result)
end



end
