class HiddenWord

attr_reader :word, :display
  def initialize(word)

    @word = word
    @display = ""
  end

def letter_correct(letters, word)
  for letter in letters
    if word.include?(letter)
      return true
    end
  end
  return false
end



  def turn_word_to_array(word)
    word = word.split("")
    return word
  end

  def get_unguessed_letters(guesses)
    unguessed_letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    for letter in guesses
      if unguessed_letters.include?(letter)
        unguessed_letters.delete(letter)
      end
    end
    return unguessed_letters
  end

def word_sub(word, guesses)
  unguessed_letters = get_unguessed_letters(guesses)
  for letter in word
    if unguessed_letters.include?(letter)
      word = word.join("")
      word = word.gsub(letter, "*")
      word = word.split("")
    end
  end
  @display = word.join("")
  return @display
end







end
