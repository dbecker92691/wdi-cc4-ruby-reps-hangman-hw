# 1. Lengths

# words = ["hello", "what", "is", "up", "dude"]

# lengths do | arr |
#     arr.split(' ').each
# end


# 2. Transmogrifier


def transmogrifier num1, num2, num3 
    p (num1 + num2) ** num3
end

transmogrifier(5, 4, 3)
transmogrifier(13, 12, 5)
transmogrifier(42, 13, 7)


# 3 toonify

def toonify accent, sentence
    if accent == "daffy"
        p sentence.gsub(/[s]/, "th")
    elsif accent == "elmer"
        p sentense.gsub(/[r]/, 'w')
    else
        p sentense
    end
end


toonify("daffy", "so you smell like sausage")


# 4 word_reverse

def word_reverse string
   p string.split(" ").reverse.join(" ")
end

word_reverse('Now I know what TV dinner feels like')



# 5 letter_reverse

def letter_reverse string
    p string.reverse
end


letter_reverse("Now I know what TV dinner feels like")
