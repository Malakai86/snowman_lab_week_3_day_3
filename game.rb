class Game
attr_reader :player, :hiddenword, :guessed_letters

  def initialize(player, hiddenword, guessed_letters)

    @player = player
    @hiddenword = hiddenword
    @guessed_letters = guessed_letters
  end
  end
