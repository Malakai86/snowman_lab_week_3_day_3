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




end
