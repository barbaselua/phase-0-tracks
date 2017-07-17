class WordGuessingGame

  def initialize(word)
    @word = word
    @current_state = "_" * word.length
    @win
  end

  def get_word
    @word 
  end 

  def get_current_state
    @current_state
  end

  def guess_letter(letter)
    @word.split('').each_with_index do |char, index|
      if letter == char
        @current_state[index] = letter
        puts "Yay! You guessed #{letter}."
        p @current_state
      else
        get_current_state
      end 
    end 
  end

end 