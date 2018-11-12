

# take in an array of words for the player to guess

# randomly select a word from the array

# a player gets 10 guesses

# a player will guess one letter at a time, the game
# will check if the letter guessed is the same as the next
# letter in line

# if yes, letter of the word gets printed

# if no, player gets a strike

# player goes until there are 10 strikes or complet word

require 'bundler'
Bundler.require()

word_array = ["knot", "tie", "bow", "needle"]

class Word
    attr_accessor :game_word
    def initialize
        @game_word = @word_array.sample
    end
end    

class Hangman

    def initialize
        @word = ''
        @guesses = 10
    end
    def pick_word 
       @word = Word.new 
    end
    def check_letter word, guesses
        if input == @word[0]
            puts @word[0]
        else guesses -= 1
            puts "incorrect"
        end
            
    end
    def end_game guesses
        if guesses == 0
            puts "Game Over"
        end
    end
end

new_game = Hangman.new
new_game.pick_word

p new_game.word



# loop do 
#     print "would you like to play hangman? Y or N"
#     input = gets.chomp
#     if input == "y"
#         puts "I'm thinking of a word...pick a letter"
#         new_game = Hangman.new
#         new_game.pick_word
#     elsif input == "n"
#         puts "fine, don't play."
#         break
#     end        
# end