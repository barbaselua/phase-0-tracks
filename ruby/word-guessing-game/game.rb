class WordGuessingGame

  def initialize(word)
    @word = word
    @current_state = "_" * word.length
    @win
  end

  def get_current_state
    @current_state
  end

end 