

# take in an array of words for the player to guess

# randomly select a word from the array

# a player gets 10 guesses

# a player will guess one letter at a time, the game
# will check if the letter guessed is the same as the next
# letter in line

# if yes, letter of the word gets printed

# if no, player gets a strike

# player goes until there are 10 strikes or complet word


# Goal of the game is to have it pick a word and see if the letters
# guessed match the word

class Word
    WORD_ARRAY = ["knot", "tie", "bow", "needle"].freeze

    attr_accessor :game_word

    def initialize
        @game_word = WORD_ARRAY.sample
        @guessed_word = '_' * @game_word.length
    end

    def check_letter(letter)
        match = false
        @game_word.chars.each_with_index do |char, i|
            if char.eql?(letter)
                match = true
                @guessed_word[i] = letter
            end
        end

        return match
    end

    def print_word
        p @guessed_word
    end
    
    def complete? 
        if @game_word == @guessed_word
            true
        end
    end

end    

class Hangman

    def initialize
        @word = Word.new
        @guesses = 10
    end
    def play_game
        loop do 
            puts 
            input = get.chomp
            if input == Word.check_letter
        end
    end
    def end_game guesses
        if guesses == 0
            puts "Game Over"
        end
    end
end



loop do 
    print "would you like to play hangman? Y or N"
    input = gets.chomp
    if input == "y"
        puts "I'm thinking of a word...pick a letter"
        new_game = Hangman.new
    elsif input == "n"
        puts "fine, don't play."
        break
    end        
end