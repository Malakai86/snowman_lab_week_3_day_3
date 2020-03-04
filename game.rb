class Game
attr_reader :player, :hiddenword, :guessed_letters

  def initialize(player, hiddenword, guessed_letters)

    @player = player
    @hiddenword = hiddenword
    @guessed_letters = guessed_letters
  end

def guess_word(word, guesses)
  unguessed_letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  for letter in guesses
    if unguessed_letters.include?(letter)
      unguessed_letters.delete(letter)
    end
  end
  return unguessed_letters
end
  # @display = word.gsub("cat", "***")
  # return @display

  end
