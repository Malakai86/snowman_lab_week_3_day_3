class Game
attr_reader :player, :hiddenword, :guessed_letters

  def initialize(player, hiddenword, guessed_letters)

    @player = player
    @hiddenword = hiddenword
    @guessed_letters = guessed_letters
  end

def add_letter(letter)
  return @guessed_letters.push(letter)

end

# def remove_life(player)
#   lives = lives - 1
# end

def incorrect_guess(game)
  for letter in game.guessed_letters
    unless game.hiddenword.word.split("").include?(letter)
      game.player.lives -= 1
    end
  end
  return game.player.lives
end


  end
