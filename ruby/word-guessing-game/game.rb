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

#does not work
  def unique(character)
    @words.split(''.uniq)
  end 

  def win 
    if @word == @current_state 
      puts "Yay! You won!"
      @win = true
    else 
      puts "Sorry! You lost! Better luck next time!"
      @win = true
    end
  end

end 

#driver code 
puts "You are now playing Word Guessing!"
puts "Player one, please write a word:"
word_to_be_guessed = gets.chomp 
game = WordGuessingGame.new(word_to_be_guessed)
letters = []
tries = word_to_be_guessed.length
puts "Player two, guess a letter."
guess = gets.chomp 
game.guess_letter(guess)
letters << guess
until tries == 1 
  if !word_to_be_guessed.include? guess
    game.guess_letter(guess)
    letters << guess
      puts "Wrong! Please try another letter."
    p game.get_current_state
    guess = gets.chomp 
    game.guess_letter(guess)
    letters << guess
  else 
    guess = gets.chomp
    game.guess_letter(guess)
    letters << guess
  end
  tries -= 1 
end 
game.win 