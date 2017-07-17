# create class Word Guessing Game 
class WordGuessingGame

# create initialization method so every instance of a class 
#has initial data
  def initialize(word)
    @word = word
    @current_state = "_" * word.length
    @win
  end

# add getter methods to make instance variables readable.
  def get_word
    @word 
  end 

  def get_current_state
    @current_state
  end

#create method to have access to user1 input and user2 input
#in order to work with the information inputted in the driver code
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

#create method that eliminates repeated input from user2
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

#driver code to test our code 
puts "You are now playing Word Guessing!"
puts "Player one, please write a word:"
# obtaining input from player 1
word_to_be_guessed = gets.chomp 
game = WordGuessingGame.new(word_to_be_guessed)
letters = []
tries = word_to_be_guessed.length
puts "Player two, guess a letter."
#obtaining input from player 2
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