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

def hiddenword_letter_count(word)
  word = word.split("")
  return word.uniq.length()
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

def correct_guess(game)
  correct_guesses = 0
  for letter in game.guessed_letters
    if game.hiddenword.word.split("").include?(letter)
      correct_guesses += 1
    end
  end
  return correct_guesses
end

def game_outcome(game)
  if incorrect_guess(game) == 0
    result =  "You lose"
  elsif correct_guess(game) == hiddenword_letter_count(game.hiddenword.word) && incorrect_guess(game) > 0
    result = "You win"
end
return result
end
#
# def outcome(game)
#   incorrect_guess(game)
#
#
#
#
  end
